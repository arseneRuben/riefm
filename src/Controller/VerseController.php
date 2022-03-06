<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Security;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\Verse;
use App\Form\VerseType;
use Doctrine\ORM\EntityManagerInterface;

class VerseController extends AbstractController
{
    
    private $em;

    public function __construct(EntityManagerInterface $em)
    {
        $this->em = $em;
    }
      /**
     * @Route("/verses/create",name= "admin_verses_create", methods={"GET","POST"})
     * @Security("is_granted('ROLE_ADMIN')")
     */
    public function create(Request $request): Response
    {
        
        $verse = new Verse();
    	$form = $this->createForm(VerseType::class, $verse);
    	$form->handleRequest($request);
    	if($form->isSubmitted() && $form->isValid())
    	{
            $this->em->persist($verse);
            $this->em->flush();
            $this->addFlash('success', 'Verse succesfully created');
            return $this->redirectToRoute('admin_verses_create');
    	}

    	 return $this->render('verse/create.html.twig'
    	 	, ['form'=>$form->createView()]);
    }

   
}
