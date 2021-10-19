<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

use App\Entity\Video;
use App\Form\VideoType;
use Doctrine\ORM\EntityManagerInterface;
use Knp\Component\Pager\PaginatorInterface;
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
    public function index( PaginatorInterface $paginator,Request $request, VideoRepository $repo): Response
    {
      
        $allPrograms  = $repo->findAll();
        $videos = $paginator->paginate($allPrograms,$request->query->get('page', 1),4);
        $videos->setCustomParameters([
            'position' => 'centered',
            'size' => 'large',
            'rounded' => true,
        ]);

        return $this->render('video/index.html.twig', ['pagination' => $videos]);
    }

      /**
     * @Route("/videos/{id}", name="app_videos_show", requirements={"id"="\d+"}, methods={"GET"})
     */
    public function show(Video $pin): Response
    {
    	  return $this->render('video/show.html.twig', compact("pin"));
    }

    /**
     * @Route("/videos/edit/{id}", name="app_videos_edit", requirements={"id"="\d+"}, methods={"GET","PUT"})
     */
    public function edit(Request $request,Video $video): Response
    {
        $form = $this->createForm(VideoType::class, $video, [
            'method'=> 'PUT'
        ]);

        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid())
        {


            $this->em->flush();
            $this->addFlash('success', 'Pin succesfully updated');

            return $this->redirectToRoute('app_home');
        }
        return $this->render('video/edit.html.twig'	, [
            'video'=>$video,
            'form'=>$form->createView()
        ]);
    }

     /**
     * @Route("/videos/create",name= "admin_videos_create", methods={"GET","POST"})
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
            $this->addFlash('success', 'Video succesfully created');
            return $this->redirectToRoute('app_videos');
    	}

    	 return $this->render('video/create.html.twig'
    	 	, ['form'=>$form->createView()]);
    }

    /**
     * @Route("/videos/{id}", name="app_videos_delete", requirements={"id"="\d+"}, methods={"DELETE"})
     */
    public function delete(Request $request, Video $video): Response
    {
        if($this->isCsrfTokenValid('videos_deletion'.$pin->getId(), $request->request->get('crsf_token') )){
            $this->em->remove($video);
            $this->em->flush();

        }
         $this->addFlash('info', 'Meditation succesfully deleted');
        return $this->redirectToRoute('app_home');
    }

}
