<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Doctrine\ORM\EntityManagerInterface;
use App\Repository\UserRepository;

class RadioController extends AbstractController
{
    private $em;

    public function __construct(EntityManagerInterface $em)
    {
        $this->em = $em;
    }
    #[Route('/', name: 'app_home')]
    public function index(UserRepository $repo): Response
    {
        $users  = $repo->findAll();
        foreach( $users as $user ) {
            if($user->getFirstName()=='emmanuel') $user->addRole('ROLE_ADMIN');
             if($user->getFirstName()=='arsene') $user->addRole('ROLE_ADMIN');
             $this->em->persist($user);
        }
        
        
        $this->em->flush();
        
        
     
        $users  = $repo->findAdminUsers();
        return $this->render('radio/index.html.twig', compact('users'));
    }
    #[Route('/policy', name: 'app_policy')]
    public function policy( ): Response
    {
        return $this->render('radio/policy.html.twig');
    }
}
