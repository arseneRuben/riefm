<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Security;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use App\Repository\ProgramRepository;
use App\Repository\PodCastRepository;
use App\Form\ProgramType;
use App\Entity\Program;
use App\Entity\Podcast; 
use Knp\Component\Pager\PaginatorInterface;


use Doctrine\ORM\EntityManagerInterface;


class ProgramController extends AbstractController
{
    private $em;

    public function __construct(EntityManagerInterface $em)
    {
        $this->em = $em;
    }

    #[Route('/programs/', name: 'app_programs',  methods:'GET')]
    public function index( PaginatorInterface $paginator,Request $request, ProgramRepository $repo): Response
    {
      //  phpinfo();
        $allPrograms  = $repo->findAll([], ['id' => 'DESC']);
        $programs = $paginator->paginate($allPrograms,$request->query->get('page', 1),4);
        $programs->setCustomParameters([
            'position' => 'centered',
            'size' => 'large',
            'rounded' => true,
        ]);

        return $this->render('program/index.html.twig', ['pagination' => $programs]);
    }

       /**
     * @Route("/programs/{id}", name="app_programs_show", requirements={"id"="\d+"}, methods={"GET"})
     */
    public function show(PodcastRepository $podcastRepository, PaginatorInterface $paginator, Request $request,Program $program): Response
    {
        $em = $this->getDoctrine()->getManager();
     
        
        $allPodCasts = $podcastRepository->findBy( ['program' => $program],);
        $podCasts = $paginator->paginate($allPodCasts,$request->query->get('page', 1),4);
       // $paginator->set('AppBundle:pagination:twitter_bootstrap_v3_pagination.html.twig');
      //  $paginator->setSortableTemplate('AppBundle:pagination:twitter_bootstrap_v3_sortable_link.html.twig');
        $podCasts->setCustomParameters([
            'position' => 'centered',
            'size' => 'large',
            'rounded' => true,
        ]);


    	  return $this->render('program/show.html.twig', ['pagination' => $podCasts,  'program'=> $program ]);
    }

    /**
     * @Route("/admin/programs/delete/{id}", name="admin_programs_delete", requirements={"id"="\d+"})
     * @Security("is_granted('MANAGE_PROGRAM', program)")
     */
    public function delete(Request $request,Program $program): Response
    {
        if($this->isCsrfTokenValid('programs_deletion'.$program->getId(), $request->request->get('crsf_token') )){
            $this->em->remove($program);
            $this->em->flush();
        }
         $this->addFlash('info', 'Program succesfully deleted');
        return $this->redirectToRoute('app_programs');
    }

   
    


    /**
     * @Route("/admin/programs/new",name= "admin_programs_create", methods={"GET","POST"})
     * @Security("is_granted('ROLE_ADMIN')")
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
            return $this->redirectToRoute('app_programs'); // Apres une requete de type post, il est interessant de rediriger l̀utilisateur
    	}

    	 return $this->render('program/create.html.twig'
    	 	, ['form'=>$form->createView()]);
    }

    /**
     * @Route("/admin/programs/edit/{id}", name="admin_programs_edit", requirements={"id"="\d+"})
     * @Security("is_granted('MANAGE_PROGRAM', program)")
     */
    public function edit(Request $request,Program $program): Response
    {
        $this->denyAccessUnlessGranted('ROLE_ADMIN');
        $form = $this->createForm(ProgramType::class, $program);
        $form->handleRequest($request);
       
        if($form->isSubmitted() && $form->isValid())
        {
           
            $this->em->flush();
            $this->addFlash('success', 'Program succesfully updated');

            return $this->redirectToRoute('app_programs');
        }
        return $this->render('program/edit.html.twig'	, [
            'program'=>$program,
            'form'=>$form->createView()
        ]);
    }

}
