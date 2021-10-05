<?php

namespace App\Controller;
use App̧\Form\AdvertType;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Doctrine\ORM\EntityManagerInterface;
use App\Repository\UserRepository;
use App\Repository\PodCastRepository;
use App\Repository\VideoRepository;
use App\Entity\Enquiry;


class RadioController extends AbstractController
{
    private $em;

    public function __construct(EntityManagerInterface $em)
    {
        $this->em = $em;
    }
    #[Route('/', name: 'app_home')]
    public function index(UserRepository $usRepo, PodcastRepository $pdRepo , VideoRepository $vdRepo): Response
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
   /* public function contactAction() {
        $enquiry = new Enquiry();
        $form = $this->createForm( EnquiryType::class, $enquiry);
        $request = $this->getRequest();
        if ($request->getMethod() == 'POST') {
            $form->bind($request);
            if ($form->isValid()) {
                    if ($enquiry->getSubject() == "temoignage") {
                        $em = $this->getDoctrine()->getManager();
                        $temoignage = new Temoignage();
                        // $auditeur = $em->getRepository('AppBundle:User')->findOneBy(array('id' => $_POST['userid']));
                        $temoignage->setAuthor($this->getUser());
                        $temoignage->setContent($enquiry->getBody());
                        $temoignage->setVisibility(false);
                        $em->persist($temoignage);
                        $em->flush();
                        $this->addFlash('primary', 'Temoignage enregistre avec success. Il sera traite et publie  dans les plus bref delais!');
                    } else  {
                        // Un email dans tous les autres cas
                        $message = (new \Swift_Message($enquiry->getBody()))
                                ->setFrom($enquiry->getAuditeur()->getEmail())
                                ->setTo('contactriefm@gmail.com')
                                ->setBody(
                                $this->renderView(
                                        'radio/contact.html.twig', array('name' => $enquiry->getName(), 'form' => $form->createView())
                                ), 'text/html'
                        );
                        $this->get('mailer')->send($message);
                        $this->addFlash('primary', 'Correspondance bien. Nous vous repondrons dans les plus bref delais!');
                     } 
                     
                     return $this->redirectToRoute('app_account');

              
               
              
            
            }

            return $this->render('default/contact.html.twig', array(
                        'form' => $form->createView()
            ));
        }
    }*/
}