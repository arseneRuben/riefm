<?php

namespace App\Entity;

use App\Repository\ProgramRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;
use App\Entity\Traits\TimeStampable;
use App\Entity\Traits\HasUploadableField;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\HttpFoundation\File\File;
use Vich\UploaderBundle\Mapping\Annotation as Vich;

/**
 * @ORM\Entity(repositoryClass=ProgramRepository::class)
 * @ORM\Table(name="programs")
 * @Vich\Uploadable
 * @ORM\HasLifecycleCallbacks
 */
class Program
{
    use TimeStampable;
    use HasUploadableField;
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * NOTE: This is not a mapped field of entity metadata, just a simple property.
     * 
     * @Vich\UploadableField(mapping="program_image", fileNameProperty="imageName")
     * @Assert\Image(maxSize="8M")
     * 
     * @var File|null
     */
    private $imageFile;


    /**
     * @ORM\Column(type="string", length=255)
     * @Assert\NotBlank
     * @Assert\Length(min=3)
     */
    private $name;

    /**
     * @ORM\Column(type="text")
     * @Assert\NotBlank
     * @Assert\Length(min=10)
     */
    private $description;

    /**
     * @ORM\Column(type="boolean")
     */
    private $interactive;

    
  
    public function __construct()
    {
        
    }

    
    public function __tostring()
    {
        return $this->name;
    }

    

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(?string $name): self
    {
        $this->name = $name;

        return $this;
    }

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(?string $description): self
    {
        $this->description = $description;

        return $this;
    }

    public function getInteractive(): ?bool
    {
        return $this->interactive;
    }

    public function setInteractive(bool $interactive): self
    {
        $this->interactive = $interactive;

        return $this;
    }

   
}
