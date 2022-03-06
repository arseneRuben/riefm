<?php

namespace App\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Security;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;

use Symfony\Component\Routing\Annotation\Route;
use App\Repository\CategoryRepository;
use App\Repository\NewsLetterRepository;
use App\Repository\AdvertisementRepository;
use Doctrine\ORM\EntityManagerInterface;
use App\Entity\NewsLetter;
use App\Entity\User;
use App\Form\NewsLetterUserType;


class NewsLetterController extends AbstractController
{
    private $em;

    public function __construct(EntityManagerInterface $em)
    {
        $this->em = $em;
    }
      /**
     * @Route("/news", name="app_news_letter")
     */
   
    public function index(CategoryRepository $repo, AdvertisementRepository $newRepo): Response
    {
        //$adverts = $newRepo->findAll([], ['createdAt' => 'DESC']);
        //dd($adverts);
        $categories = $repo->findAll([], ['name' => 'DESC']);
        return $this->render('news_letter/index.html.twig', compact('categories'));
    }

    
    /**
     * @Route("/admin/news/create", name="admin_news_letter_create", requirements={"id"="\d+"})
     */
    public function create(Request $request): Response
    {
        $news = new NewsLetter();
    	$form = $this->createForm(NewsLetterUserType::class, $news);
    	$form->handleRequest($request);
    	if($form->isSubmitted() && $form->isValid())
    	{
            $news->setAuthor($this->getUser());
            $this->em->persist($news);
            $this->em->flush();
            $this->addFlash('success', 'News succesfully created');
            return $this->redirectToRoute('app_news_letter');
    	}

    	 return $this->render('news_letter/create.html.twig'
    	 	, ['form'=>$form->createView()]);
    }

   
}
