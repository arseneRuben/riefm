<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class RadioController extends AbstractController
{
    #[Route('/radio', name: 'radio')]
    public function index(): Response
    {
        return $this->render('radio/index.html.twig', [
            'controller_name' => 'RadioController',
        ]);
    }
}
