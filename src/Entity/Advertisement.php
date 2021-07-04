<?php

namespace App\Entity;

use App\Repository\AdvertisementRepository;
use Doctrine\ORM\Mapping as ORM;
use App\Entity\Traits\TimeStampable;

/**
 * @ORM\Entity(repositoryClass=AdvertisementRepository::class)
 * @ORM\Table(name="advertisements")
 * @ORM\HasLifecycleCallbacks
 */
class Advertisement
{
    use TimeStampable;
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $title;

    /**
     * @ORM\Column(type="text")
     */
    private $content;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getTitle(): ?string
    {
        return $this->title;
    }

    public function setTitle(string $title): self
    {
        $this->title = $title;

        return $this;
    }

    public function getContent(): ?string
    {
        return $this->content;
    }

    public function setContent(string $content): self
    {
        $this->content = $content;

        return $this;
    }
}
