<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use App\Form\UserFormType;
use Doctrine\ORM\EntityManagerInterface;


class AccountController extends AbstractController
{

    private $em;

    public function __construct(EntityManagerInterface $em)
    {
        $this->em = $em;
    }
    #[Route('/account', name: 'app_account')]
    public function show(): Response
    {
        return $this->render('account/show.html.twig', [
           
        ]);
    }

     /**
     * @Route("/account/edit", name="app_account_edit", methods={"GET","POST"})
     */
    public function edit(Request $request): Response
    {
      
        $user = $this->getUser();

        $form = $this->createForm(UserFormType::class, $user);
        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid())
    	{
            $this->em->flush();
            $this->addFlash('success', 'Account successfully modified');
        }


        return $this->render('account/edit.html.twig'	, [
            'form'=>$form->createView()
        ]);
    }

}
