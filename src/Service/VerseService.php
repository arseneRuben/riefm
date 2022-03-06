<?php

namespace App\Service;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Security;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\Verse;
use App\Repository\VerseRepository;
use App\Form\VerseType;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;


class VerseService extends AbstractController{
    private $em;
    private $repo;

    public function __construct(EntityManagerInterface $em, VerseRepository $repo)
    {
        $this->em = $em;
        $this->repo = $repo;
    }
    
    public function index(): Response
    {

        //$repo = $this->getDoctrine->getManager()->getRepository(Verse::class);
        $verses  = $this->repo->findAll();
        return $this->render('verse/index.html.twig', ['verses' => $verses]);
    }
}