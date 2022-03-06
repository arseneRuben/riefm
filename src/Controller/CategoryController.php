<?php

namespace App\Controller;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\Category;
use App\Repository\CategoryRepository;
use App\Form\CategoryType;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Security;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;


class CategoryController extends AbstractController
{
    private $em;

    public function __construct(EntityManagerInterface $em)
    {
        $this->em = $em;
    }

      /**
     * @Route("/category", name="app_category")
     */
    public function index(CategoryRepository $repo): Response
    {
        $categories = $repo->findAll([], ['name' => 'DESC']);
        return $this->render('category/index.html.twig', compact('categories'));
    }


    /**
     * @Route("/category/{id}", name="app_category_show", requirements={"id"="\d+"}, methods={"GET"})
     */
    public function show(Category $cat): Response
    {
    	  return $this->render('category/show.html.twig', compact("cat"));
    }

    /**
     * @Route("/admin/category/create",name= "admin_category_create", methods={"GET","POST"})
     * @Security("is_granted('ROLE_ADMIN')")
     */
    public function create(Request $request): Response
    {
        
        $cat = new Category();
    	$form = $this->createForm(CategoryType::class, $cat);
    	$form->handleRequest($request);
    	if($form->isSubmitted() && $form->isValid())
    	{
           
            $this->em->persist($cat);
            $this->em->flush();
            $this->addFlash('success', 'Category succesfully created');
            return $this->redirectToRoute('app_category');
    	}

    	 return $this->render('category/create.html.twig'
    	 	, ['form'=>$form->createView()]);
    }


     /**
     * @Route("/admin/category/edit/{id}", name="admin_category_edit", requirements={"id"="\d+"}, methods={"GET","POST"})
     * @Security("is_granted('MANAGE_CATEGORY', cat)")
     */
    public function edit(Request $request,Category $cat): Response
    {
        if(!$this->getUser()){
            $this->addFlash('danger', 'You need to log in first!');
            return $this->redirectToRoute('app_login');
        }
        if(!$this->getUser()->isVerified()){
            $this->addFlash('danger', 'You need to have a verified account!');
            return $this->redirectToRoute('app_home');
        }

        
       

        $form = $this->createForm(CategoryType::class, $cat);

        $form->handleRequest($request);
        
        if($form->isSubmitted() && $form->isValid())
        {
            $this->em->flush();
            $this->addFlash('success', 'Category succesfully updated');
            return $this->redirectToRoute('app_category');
        }
        return $this->render('category/edit.html.twig'	, [
            'category'=>$cat,
            'form'=>$form->createView()
        ]);
    }

    /**
     * @Route("/admin/category/delete/{id}", name="admin_category_delete", requirements={"id"="\d+"})
     * @Security("is_granted('MANAGE_ADVERT', advert)")
     */
    public function delete(Request $request,Category $cat): Response
    {
        if(!$this->getUser()){
            $this->addFlash('danger', 'You need to log in first!');
            return $this->redirectToRoute('app_login');
        }
        if(!$this->getUser()->isVerified()){
            $this->addFlash('danger', 'You need to have a verified account!');
            return $this->redirectToRoute('app_home');
        }

        
       
        $this->denyAccessUnlessGranted('ROLE_ADMIN');

        if($this->isCsrfTokenValid('cat_deletion'.$cat->getId(), $request->request->get('crsf_token') )){
            $this->em->remove($cat);
            $this->em->flush();

        }
         $this->addFlash('info', 'Category succesfully deleted');
        return $this->redirectToRoute('app_category');
    }

}
