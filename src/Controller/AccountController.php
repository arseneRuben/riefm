<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use App\Form\UserFormType;
use App\Form\ChangePasswordFormType;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;


/**
 * @IsGranted("ROLE_USER")
 * @Route("/account")
 */
class AccountController extends AbstractController
{

    private $em;

    public function __construct(EntityManagerInterface $em)
    {
        $this->em = $em;
    }

    #[Route('/', name: 'app_account')]
    public function show(): Response
    {
        if(! $this->getUser()->isVerified())
        {
            $this->addFlash('error', 'You need to have a verified account');
            return $this->redirectToRoute('app_home');
        }
        return $this->render('account/show.html.twig', [
        ]);
    }

     /**
     * @Route("/edit", name="app_account_edit", methods={"GET","POST"})
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


     /**
     * @Route("/changepwd", name="app_account_changepwd", methods={"GET","POST"})
     */
    public function changePwd(Request $request, UserPasswordEncoderInterface $passwordEncoder): Response
    {
      
        $form = $this->createForm(ChangePasswordFormType::class, null, [
            'current_password_required' => true,
        ]);
        $form->handleRequest($request);
        $user = $this->getUser();

        //$form = $this->createForm(UserFormType::class, $user);
      

        if($form->isSubmitted() && $form->isValid())
    	{
            $user->setPassword(
                $passwordEncoder->encodePassword(
                    $user,
                    $form->get('plainPassword')->getData()
                )
            );
            $this->em->flush();
            $this->addFlash('success', 'Account successfully modified');
            return $this->redirectToRoute('app_account');
        }


        return $this->render('account/changepwd.html.twig'	, [
            'form'=>$form->createView()
        ]);
    }

}
