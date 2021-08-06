<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Knp\Component\Pager\PaginatorInterface;
use App\Entity\PodCast;
use App\Form\PodCastType;
use App\Repository\PodcastRepository;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\File\Exception\FileException;
use Symfony\Component\HttpFoundation\File\UploadedFile;
use Doctrine\ORM\EntityManagerInterface;
use App\Repository\UserRepository;
use Symfony\Component\String\Slugger\SluggerInterface;


class PodCastController extends AbstractController
{
    private $em;

    public function __construct(EntityManagerInterface $em)
    {
        $this->em = $em;
    }
     /**
     * @Route("/new",name= "app_podcasts_create", methods={"GET","POST"})
     */
    public function create(Request $request , SluggerInterface $slugger, UserRepository $userRepository): Response
    {
        $post= new PodCast();
    	$form = $this->createForm(PodCastType::class, $post);
        
        
    	$form->handleRequest($request);
    	
    	if($form->isSubmitted() && $form->isValid())
    	{

             /** @var UploadedFile $audioFile */
            $audioFile = $form->get('audioFile')->getData();
             // this condition is needed because the 'audioFile' field is not required
            // so the Audio file must be processed only when a file is uploaded
            if ($audioFile) {
                $originalFilename = pathinfo($audioFile->getClientOriginalName(), PATHINFO_FILENAME);
                // this is needed to safely include the file name as part of the URL
                $safeFilename = $slugger->slug($originalFilename);
                $newFilename = $safeFilename.'-'.uniqid().'.'.$audioFile->guessExtension();

                // Move the file to the directory where brochures are stored
                try {
                    $audioFile->move(
                        $this->getParameter('audio_directory'),
                        $newFilename
                    );
                } catch (FileException $e) {
                    // ... handle exception if something happens during file upload
                }
                $author  = $userRepository->findOneBy(['id' => 1]);
                // updates the 'brochureFilename' property to store the PDF file name
                // instead of its contents
                $post->setFileName($newFilename);
                $post->setAuthor($author);
            }

            $this->em->persist($post);
            $this->em->flush();
            $this->addFlash('success', 'Podcast succesfully created');
            return $this->redirectToRoute('app_programs'); // Apres une requete de type post, il est interessant de rediriger l̀utilisateur
    	}

    	 return $this->render('pod_cast/create.html.twig'
    	 	, ['form'=>$form->createView()]);
    }
}
