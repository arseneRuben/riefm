<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use App\Repository\ProgramRepository;
use App\Form\ProgramType;
use App\Entity\Program;
use Doctrine\ORM\EntityManagerInterface;

class ProgramController extends AbstractController
{
    private $em;

    public function __construct(EntityManagerInterface $em)
    {
        $this->em = $em;
    }

    #[Route('/programs', name: 'app_programs',  methods:'GET')]
    public function index(ProgramRepository $repo): Response
    {

        $programs  = $repo->findAll([], ['id' => 'DESC']);
        return $this->render('program/index.html.twig', compact('programs'));
    }

       /**
     * @Route("/programs/{id}", name="app_programs_show", requirements={"id"="\d+"}, methods={"GET"})
     */
    public function show(Program $program): Response
    {
    	  return $this->render('program/show.html.twig', compact("program"));
    }

    /**
     * @Route("/programs/{id}", name="app_programs_delete", requirements={"id"="\d+"}, methods={"DELETE"})
     */
    public function delete(Request $request,Program $program): Response
    {
        if($this->isCsrfTokenValid('programs_deletion'.$program->getId(), $request->request->get('crsf_token') )){
            $this->em->remove($program);
            $this->em->flush();

        }
         $this->addFlash('info', 'Program succesfully deleted');
        return $this->redirectToRoute('app_home');
    }

   
    


    /**
     * @Route("/programs/new",name= "app_programs_create", methods={"GET","POST"})
     */
    public function create(Request $request): Response
    {
        $pin = new Program();
    	$form = $this->createForm(ProgramType::class, $pin);
        
        
    	$form->handleRequest($request);
    	
    	if($form->isSubmitted() && $form->isValid())
    	{
            $this->em->persist($pin);
            $this->em->flush();
            $this->addFlash('success', 'Program succesfully created');
            return $this->redirectToRoute('app_home'); // Apres une requete de type post, il est interessant de rediriger l̀utilisateur
    	}

    	 return $this->render('program/create.html.twig'
    	 	, ['form'=>$form->createView()]);
    }

    /**
     * @Route("/programs/edit/{id}", name="app_programs_edit", requirements={"id"="\d+"}, methods={"GET","PUT"})
     */
    public function edit(Request $request,Program $pin): Response
    {
        $form = $this->createForm(ProgramType::class, $pin, [
            'method' => 'PUT',
        ]);

        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid())
        {


            $this->em->flush();
            $this->addFlash('success', 'Program succesfully updated');

            return $this->redirectToRoute('app_programs');
        }
        return $this->render('program/edit.html.twig'	, [
            'program'=>$pin,
            'form'=>$form->createView()
        ]);
    }

}
