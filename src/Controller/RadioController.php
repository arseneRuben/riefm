<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Repository\AdvertisementRepository;
use App\Entity\Advertisement;

class RadioController extends AbstractController
{
    #[Route('/radio', name: 'app_home')]
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
}
