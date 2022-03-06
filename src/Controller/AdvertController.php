<?php

namespace App\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Security;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use App\Repository\AdvertisementRepository;
use App\Repository\CategoryRepository;
use App\Entity\Advertisement;
use App\Form\AdvertType;
use Doctrine\ORM\EntityManagerInterface;


class AdvertController extends AbstractController
{
    private $em;

    public function __construct(EntityManagerInterface $em)
    {
        $this->em = $em;
    }

    /**
     * @Route("adverts", name="app_adverts", requirements={"id"="\d+"}, methods={"GET"})
     */
    public function index( AdvertisementRepository $advertRepo): Response
    {
       
        $adverts = $advertRepo->findAll([], ['createdAt' => 'DESC']);
        return $this->render('advert/index.html.twig', compact('adverts'));
    }


     /**
     * @Route("adverts/{id}", name="app_adverts_show", requirements={"id"="\d+"}, methods={"GET"})
     */
    public function show(CategoryRepository $repo,Advertisement $advert): Response
    {
          $categories = $repo->findAll([], ['name' => 'DESC']);
    	  return $this->render('advert/show.html.twig', compact('categories',"advert"));
    }

    /**
     * @Route("admin/adverts/create",name= "admin_adverts_create", methods={"GET","POST"})
     * @Security("is_granted('ROLE_ADMIN')")
     */
    public function create(Request $request): Response
    {
        
        $advert = new Advertisement();
    	$form = $this->createForm(AdvertType::class, $advert);
    	$form->handleRequest($request);
       
    	if($form->isSubmitted() && $form->isValid())
    	{
            $advert->setAuthor($this->getUser());
            $this->em->persist($advert);
            $this->em->flush();
            $this->addFlash('success', 'Advertisement succesfully created');
            return $this->redirectToRoute('app_news_letter');
    	}

    	 return $this->render('advert/create.html.twig'
    	 	, ['form'=>$form->createView()]);
    }


     /**
     * @Route("admin/adverts/edit/{id}", name="admin_adverts_edit", requirements={"id"="\d+"}, methods={"GET","POST"})
     * @Security("is_granted('MANAGE_ADVERT', advert)")
     */
    public function edit(Request $request,Advertisement $advert): Response
    {
        if(!$this->getUser()){
            $this->addFlash('danger', 'You need to log in first!');
            return $this->redirectToRoute('app_login');
        }
        if(!$this->getUser()->isVerified()){
            $this->addFlash('danger', 'You need to have a verified account!');
            return $this->redirectToRoute('app_home');
        }

        if($advert->getAuthor() != $this->getUser()){
            $this->addFlash('danger', 'Access Forbidden!');
            return $this->redirectToRoute('app_adverts');
        }
       

        $form = $this->createForm(AdvertType::class, $advert);

        $form->handleRequest($request);
        
        if($form->isSubmitted() && $form->isValid())
        {
            $this->em->flush();
            $this->addFlash('success', 'Pin succesfully updated');
            return $this->redirectToRoute('app_adverts');
        }
        return $this->render('advert/edit.html.twig'	, [
            'advert'=>$advert,
            'form'=>$form->createView()
        ]);
    }

    /**
     * @Route("admin/adverts/delete/{id}", name="admin_adverts_delete", requirements={"id"="\d+"})
     * @Security("is_granted('MANAGE_ADVERT', advert)")
     */
    public function delete(Request $request,Advertisement $advert): Response
    {
        if(!$this->getUser()){
            $this->addFlash('danger', 'You need to log in first!');
            return $this->redirectToRoute('app_login');
        }
        if(!$this->getUser()->isVerified()){
            $this->addFlash('danger', 'You need to have a verified account!');
            return $this->redirectToRoute('app_home');
        }

        
        if($advert->getAuthor() != $this->getUser()){
            $this->addFlash('danger', 'Access Forbidden!');
            return $this->redirectToRoute('app_adverts');
        }
        $this->denyAccessUnlessGranted('ROLE_ADMIN');

        if($this->isCsrfTokenValid('adverts_deletion'.$advert->getId(), $request->request->get('crsf_token') )){
            $this->em->remove($advert);
            $this->em->flush();

        }
         $this->addFlash('info', 'Advertisement succesfully deleted');
        return $this->redirectToRoute('app_adverts');
    }

}
