<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

use App\Entity\Video;
use App\Form\VideoType;
use Doctrine\ORM\EntityManagerInterface;

use Symfony\Component\HttpFoundation\Request;
use App\Repository\VideoRepository;
use App\Repository\UserRepository;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;

class VideoController extends AbstractController
{
    private $em;

    public function __construct(EntityManagerInterface $em)
    {
        $this->em = $em;
    }

    #[Route('/video', name: 'app_videos')]
    public function index(VideoRepository $videoRepo): Response
    {
        $videos = $videoRepo->findAll([], ['createdAt' => 'DESC']);
        return $this->render('video/index.html.twig', compact('videos'));
      
    }

      /**
     * @Route("/videos/{id}", name="app_videos_show", requirements={"id"="\d+"}, methods={"GET"})
     */
    public function show(Pin $pin): Response
    {
    	  return $this->render('video/show.html.twig', compact("pin"));
    }

    /**
     * @Route("/videos/edit/{id}", name="app_videos_edit", requirements={"id"="\d+"}, methods={"GET","PUT"})
     */
    public function edit(Request $request,Pin $pin): Response
    {
        $form = $this->createForm(VideoType::class, $pin, [
            'method'=> 'PUT'
        ]);

        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid())
        {


            $this->em->flush();
            $this->addFlash('success', 'Pin succesfully updated');

            return $this->redirectToRoute('app_home');
        }
        return $this->render('pins/edit.html.twig'	, [
            'pin'=>$pin,
            'form'=>$form->createView()
        ]);
    }

     /**
     * @Route("/pins/create",name= "admin_videos_create", methods={"GET","POST"})
     */
    public function create(Request $request, UserRepository $rep): Response
    {
        $v = new Video();
    	$form = $this->createForm(VideoType::class, $v);
        
        $v->setAuthor($this->getUser());
    	$form->handleRequest($request);
    	
    	if($form->isSubmitted() && $form->isValid())
    	{

            $this->em->persist($v);
            $this->em->flush();
            $this->addFlash('success', 'Mideo succesfully created');
            return $this->redirectToRoute('app_videos');
    	}

    	 return $this->render('video/create.html.twig'
    	 	, ['form'=>$form->createView()]);
    }

    /**
     * @Route("/pins/{id}", name="app_videos_delete", requirements={"id"="\d+"}, methods={"DELETE"})
     */
    public function delete(Request $request, Pin $pin): Response
    {
        if($this->isCsrfTokenValid('pins_deletion'.$pin->getId(), $request->request->get('crsf_token') )){
            $this->em->remove($pin);
            $this->em->flush();

        }
         $this->addFlash('info', 'Pin succesfully deleted');
        return $this->redirectToRoute('app_home');
    }

}
