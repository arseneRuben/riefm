<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Repository\ProgramRepository;
use App\Entity\Program;

class ProgramController extends AbstractController
{
    #[Route('/programs', name: 'app_programs')]
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
     * @Route("/programs/edit/{id}", name="app_programs_edit", requirements={"id"="\d+"}, methods={"GET","POST"})
     */
    public function edit(Request $request,Program $program): Response
    {
       
    }

}
