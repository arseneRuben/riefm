<?php

namespace App\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Security;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use App\Form\CommentType;
use App\Entity\Comment;
use App\Entity\PodCast;
use App\Entity\Advertisement;
use Doctrine\ORM\EntityManagerInterface;



class CommentController extends AbstractController
{
   
    private $em;

    public function __construct(EntityManagerInterface $em)
    {
        $this->em = $em;
    }

     /**
     * @Route("/admin/comment/new", name="new_comment")
     */
   
    public function newAction(Request $request): Response
    {
        //Gestion des commentaires
        //Creation d'un commentaire vierge
        $comment = new Comment();
        // Generation du formulaire
        $commentForm = $this->createForm(CommentType::class, $comment);
        return $this->render('layout/partials/comment.html.twig', ['commentForm'=>$commentForm->createView()]);
    }

     /**
     * @Route("/admin/comment/create", name="create_comment")
     */
    public function createAction(Request $request): Response
    {
        //Gestion des commentaires
        //Creation d'un commentaire vierge
        $comment = new Comment();
        if ($content = $request->getContent()) {
            $rgpd =  $request->request->get('rgpd');
                $itemId = $request->request->get('item_id');
                $type = $request->request->get('type');
                $content =  $request->request->get('content');
                $email =  $request->request->get('email');
            
                $nick_name =  $request->request->get('nick_name');
                if($type ==1){
                    $item = $this->em->getRepository(PodCast::class)->find($itemId);
                }
                if($type ==2){
                    $item = $this->em->getRepository(Advertisement::class)->find($itemId);
                }
                $comment->updateTimestamp();
                $comment->setItem($item);
                $comment->setContent($content);
                $comment->setEmail($email);
                $comment->setNickName($nick_name);
                $comment->setRgpd(true);
                if($this->getUser()){
                    $comment->setAuthor($this->getUser());
                }

                $parentId = $request->request->get("parent_id");
                if($parentId != null){
                    $parent = $this->em->getRepository(Comment::class)->find($parentId);
                    $comment->setParent($parent);
                    $parent->addReply($comment);
                    $this->em->persist($parent);
                }
                //$comment->setParent($parent ?? null);
                $this->em->persist($comment);
            
                $this->em->flush();
                $request->getSession()->getFlashBag()->add('success', 'Your comment has been saved!');
                if($type ==1){
                    return $this->redirectToRoute("app_podcasts_show", ['id'=>$item->getId()]);
                }
                if($type ==2){
                    return $this->redirectToRoute("app_adverts_show", ['id'=>$item->getId()]);
                }
        }
        return $this->redirectToRoute("app_home");
    }
}
