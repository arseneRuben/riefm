<?php

namespace App\Controller;


use App\Entity\Enquiry;
use App\Form\EnquiryType;
use App\Repository\UserRepository;
use App\Repository\VideoRepository;
use App\Repository\PodCastRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;

use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;


class RadioController extends AbstractController
{
    private $em;

    public function __construct(EntityManagerInterface $em)
    {
        $this->em = $em;
    }
    #[Route('/', name: 'app_home')]
    public function index(UserRepository $usRepo, PodCastRepository $pdRepo , VideoRepository $vdRepo): Response
    {
       
      

       // $users  = $usRepo->findAll();
        $podCasts  = $pdRepo->findNLatest(4);
        $videos  = $vdRepo->findNLatest(4);
       /*dd($podCasts );
        foreach( $users as $user ) {
            if($user->getFirstName()=='emmanuel') $user->addRole('ROLE_ADMIN');
             if($user->getFirstName()=='arsene') $user->addRole('ROLE_ADMIN');
             $this->em->persist($user);
        } 
        
        
        $this->em->flush();*/
        
        
     
        $users  = $usRepo->findAdminUsers();
        return $this->render('radio/index.html.twig', compact('users', 'podCasts', 'videos'));
    }
    #[Route('/policy', name: 'app_policy')]
    public function policy( ): Response
    {
        return $this->render('radio/policy.html.twig');
    }


     /**
     * @Route("/contact", name="app_contact")
     */
    public function contactAction(Request $request, \Swift_Mailer $mailer) {
        $enquiry = new Enquiry();

      
        $form = $this->createForm(EnquiryType::class, $enquiry);
        $form->handleRequest($request);

   
         //dd($form->getErrors());
         if ($form->isSubmitted() && $form->isValid()) {
                       $enquiry->setAuthor($this->getUser());
                        $message = (new \Swift_Message($enquiry->getSubject()))
                                ->setFrom($this->getUser()->getEmail())
                                ->setTo('contactriefm@gmail.com')
                                ->setSubject($enquiry->getSubject())
                                ->setBody($enquiry->getBody());
                        $mailer->send($message);
                        $entityManager = $this->getDoctrine()->getManager();
                        $entityManager->persist($enquiry);
                        $entityManager->flush();
                        $this->addFlash('primary', 'Correspondance bien transmis. Nous vous repondrons dans les plus bref delais!');
         }

            return $this->render('radio/contact.html.twig', array(
                        'form' => $form->createView()
            ));
        
        
    }

       

    
}