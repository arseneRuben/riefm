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

class RadioController extends AbstractController
{
    private $em;

    public function __construct(EntityManagerInterface $em)
    {
        $this->em = $em;
    }

    #[Route('/radio', name: 'app_home',  methods:'GET')]
    public function index(AdvertisementRepository $advertRepo): Response
    {
        $adverts = $advertRepo->findAll([], ['createdAt' => 'DESC']);
        return $this->render('radio/index.html.twig', compact('adverts'));
    }


     /**
     * @Route("/adverts/{id}", name="app_adverts_show", requirements={"id"="\d+"}, methods={"GET"})
     */
    public function show(Advertisement $advert): Response
    {
    	  return $this->render('advert/show.html.twig', compact("advert"));
    }

    /**
     * @Route("/adverts/create",name= "app_adverts_create", methods={"GET","POST"})
     */
    public function create(Request $request): Response
    {
        $advert = new Advertisement();
    	$form = $this->createForm(AdvertType::class, $advert);
    	$form->handleRequest($request);
    	if($form->isSubmitted() && $form->isValid())
    	{
            $this->em->persist($advert);
            $this->em->flush();
            $this->addFlash('success', 'Advertisement succesfully created');
            return $this->redirectToRoute('app_home');
    	}

    	 return $this->render('advert/create.html.twig'
    	 	, ['form'=>$form->createView()]);
    }


     /**
     * @Route("/adverts/edit/{id}", name="app_adverts_edit", requirements={"id"="\d+"}, methods={"GET","POST"})
     */
    public function edit(Request $request,Advertisement $advert): Response
    {
        $form = $this->createForm(AdvertType::class, $advert);

        $form->handleRequest($request);
        
        if($form->isSubmitted() && $form->isValid())
        {
            $this->em->flush();
            $this->addFlash('success', 'Pin succesfully updated');
            return $this->redirectToRoute('app_home');
        }
        return $this->render('advert/edit.html.twig'	, [
            'advert'=>$advert,
            'form'=>$form->createView()
        ]);
    }

    /**
     * @Route("/adverts/{id}", name="app_adverts_delete", requirements={"id"="\d+"}, methods={"DELETE"})
     */
    public function delete(Request $request,Advertisement $advert): Response
    {
        if($this->isCsrfTokenValid('pins_deletion'.$advert->getId(), $request->request->get('crsf_token') )){
            $this->em->remove($advert);
            $this->em->flush();

        }
         $this->addFlash('info', 'Advertisement succesfully deleted');
        return $this->redirectToRoute('app_home');
    }

}
