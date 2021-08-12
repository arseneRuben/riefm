<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use App\Repository\AdvertisementRepository;
use App\Entity\Advertisement;
use App\Form\AdvertType;
use Doctrine\ORM\EntityManagerInterface;

/**
 * Program controller.
 *
 * @Route("/adverts")
 */
class AdvertController extends AbstractController
{
    private $em;

    public function __construct(EntityManagerInterface $em)
    {
        $this->em = $em;
    }

    #[Route('/', name: 'app_adverts',  methods:'GET')]
    public function index(AdvertisementRepository $advertRepo): Response
    {
        $adverts = $advertRepo->findAll([], ['createdAt' => 'DESC']);
        return $this->render('advert/index.html.twig', compact('adverts'));
    }


     /**
     * @Route("/{id}", name="app_adverts_show", requirements={"id"="\d+"}, methods={"GET"})
     */
    public function show(Advertisement $advert): Response
    {
    	  return $this->render('advert/show.html.twig', compact("advert"));
    }

    /**
     * @Route("/create",name= "admin_adverts_create", methods={"GET","POST"})
     */
    public function create(Request $request): Response
    {
        $this->denyAccessUnlessGranted('ROLE_ADMIN');
        $advert = new Advertisement();
    	$form = $this->createForm(AdvertType::class, $advert);
    	$form->handleRequest($request);
    	if($form->isSubmitted() && $form->isValid())
    	{
            $advert->setAuthor($this->getUser());
            $this->em->persist($advert);
            $this->em->flush();
            $this->addFlash('success', 'Advertisement succesfully created');
            return $this->redirectToRoute('app_adverts');
    	}

    	 return $this->render('advert/create.html.twig'
    	 	, ['form'=>$form->createView()]);
    }


     /**
     * @Route("/edit/{id}", name="app_adverts_edit", requirements={"id"="\d+"}, methods={"GET","POST"})
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
        $this->denyAccessUnlessGranted('ROLE_ADMIN');

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
     * @Route("/delete/{id}", name="admin_adverts_delete", requirements={"id"="\d+"})
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
