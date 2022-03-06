<?php

namespace App\Entity;
use App\Entity\Item;
use App\Entity\Category;
use App\Repository\NewsLetterRepository;
use Doctrine\ORM\Mapping as ORM;
use App\Entity\Traits\TimeStampable;
/**
 * @ORM\Entity(repositoryClass=NewsLetterRepository::class)
 */
class NewsLetter extends Item
{
    use TimeStampable;
   
    /**
     * @ORM\Column(type="boolean")
     */
    private $is_rgpd;

    /**
     * @ORM\Column(type="text")
     */
    private $content;

    /**
     * @ORM\Column(type="boolean")
     */
    private $is_sent=false;

 
    

    public function getId(): ?int
    {
        return $this->id;
    }

    

    public function getIsRgpd(): ?bool
    {
        return $this->is_rgpd;
    }

    public function setIsRgpd(bool $is_rgpd): self
    {
        $this->is_rgpd = $is_rgpd;

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

    public function getIsSent(): ?bool
    {
        return $this->is_sent;
    }

    public function setIsSent(bool $is_sent): self
    {
        $this->is_sent = $is_sent;

        return $this;
    }

    public function getCategory(): ?Category
    {
        return $this->category;
    }

    public function setCategory(?Category $category): self
    {
        $this->category = $category;

        return $this;
    }
}
