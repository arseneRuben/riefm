<?php

namespace App\Repository;

use App\Entity\TimeSpace;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method TimeSpace|null find($id, $lockMode = null, $lockVersion = null)
 * @method TimeSpace|null findOneBy(array $criteria, array $orderBy = null)
 * @method TimeSpace[]    findAll()
 * @method TimeSpace[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class TimeSpaceRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, TimeSpace::class);
    }

    // /**
    //  * @return TimeSpace[] Returns an array of TimeSpace objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('t')
            ->andWhere('t.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('t.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?TimeSpace
    {
        return $this->createQueryBuilder('t')
            ->andWhere('t.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
