<?php

namespace App\Repository;

use App\Entity\PodCast;
use App\Entity\Program;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method PodCast|null find($id, $lockMode = null, $lockVersion = null)
 * @method PodCast|null findOneBy(array $criteria, array $orderBy = null)
 * @method PodCast[]    findAll()
 * @method PodCast[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class PodCastRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, PodCast::class);
    }

    /*public function findByProgram(Program $prog)
    {
        $qb = $this->createQueryBuilder('p')
            ->leftJoin('p.program', 'prog')
            ->where('p.e')
            ->andWhere('eval.course=:course')
            ->orderBy('std.lastname')
            ->setParameter('sequence', $sequence->getId())
            ->setParameter('course', $course->getId());
        return $qb->getQuery()->getResult();
    }*/


    // /**
    //  * @return PodCast[] Returns an array of PodCast objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('p')
            ->andWhere('p.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('p.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?PodCast
    {
        return $this->createQueryBuilder('p')
            ->andWhere('p.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
