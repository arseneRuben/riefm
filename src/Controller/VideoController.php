<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;


use App\Form\VideoType;
use Doctrine\ORM\EntityManagerInterface;

use Symfony\Component\HttpFoundation\Request;
use App\Repository\VideoRepository;
use App\Repository\UserRepository;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;

class VideoController extends AbstractController
{
    #[Route('/video', name: 'app_videos')]
    public function index(): Response
    {
        return $this->render('video/index.html.twig');
    }

      /**
     * @Route("/videos/{id}", name="app_videos_show", requirements={"id"="\d+"}, methods={"GET"})
     */
    public function show(Pin $pin): Response
    {
    	  return $this->render('video/show.html.twig', compact("pin"));
    }

    /**
     * @Route("/videos/edit/{id}", name="app_video_edit", requirements={"id"="\d+"}, methods={"GET","PUT"})
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
     * @Route("/pins/create",name= "app_pins_create", methods={"GET","POST"})
     */
    public function create(Request $request, UserRepository $rep): Response
    {
        $pin = new Pin();
    	$form = $this->createForm(PinType::class, $pin);
        
        $pin->setUser($this->getUser());
    	$form->handleRequest($request);
    	
    	if($form->isSubmitted() && $form->isValid())
    	{

            $this->em->persist($pin);
            $this->em->flush();
            $this->addFlash('success', 'Pin succesfully created');
            return $this->redirectToRoute('app_home');
    	}

    	 return $this->render('pins/create.html.twig'
    	 	, ['form'=>$form->createView()]);
    }

    /**
     * @Route("/pins/{id}", name="app_pins_delete", requirements={"id"="\d+"}, methods={"DELETE"})
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
