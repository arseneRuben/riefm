<?php

namespace App\Entity;

use App\Repository\PodCastRepository;
use Doctrine\ORM\Mapping as ORM;
use App\Entity\User;
use App\Entity\Traits\HasUploadableField; 
use App\Entity\Traits\TimeStampable;  
use Vich\UploaderBundle\Mapping\Annotation as Vich;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\HttpFoundation\File\File;
/**
 * @ORM\Entity(repositoryClass=PodCastRepository::class)
 * @ORM\Table(name="podcasts")
 * @ORM\HasLifecycleCallbacks
 * @Vich\Uploadable
 */
class PodCast
{
    use HasUploadableField;
    use TimeStampable;
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;
    
    

    /**
     * NOTE: This is not a mapped field of entity metadata, just a simple property.
     * 
     * @Vich\UploadableField(mapping="podcast_image", fileNameProperty="imageName")
     * @Assert\Image(
     *     maxSize = "8M",     
     *     mimeTypesMessage = "Please upload a valid Image"
     * )
     * @var File|null
     */
    private $imageFile;

    /**
    * NOTE: This is not a mapped field of entity metadata, just a simple property.
    * 
    * @Vich\UploadableField(mapping="podcast_file", fileNameProperty="fileName")
    * @Assert\File(
    *     maxSize = "120M",
    *     mimeTypesMessage = "Please upload a valid Audio File"
    * )

     * 
     * @var File|null
     */
    private $audioFile;

       /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $fileName;

    /**
     * @ORM\Column(type="text")
     */
    private $description;

    /**
     * @ORM\ManyToOne(targetEntity=Program::class, inversedBy="podCasts")
     * @ORM\JoinColumn(nullable=false)
     */
    private $program;

    /**
     * @ORM\ManyToOne(targetEntity=TimeSpace::class, inversedBy="podCasts")
     * @ORM\JoinColumn(nullable=true)
     */
    private $timeSpace;

    /**
     * @ORM\ManyToOne(targetEntity=User::class, inversedBy="advertisements")
     * @ORM\JoinColumn(nullable=false)
     */
    private $author;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $title;

  
    public function getId(): ?int
    {
        return $this->id;
    }

    public function getAuthor(): ?User
    {
        return $this->author;
    }

    public function setAuthor(?User $author): self
    {
        $this->author = $author;

        return $this;
    }

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(string $description): self
    {
        $this->description = $description;

        return $this;
    }

    public function getProgram(): ?Program
    {
        return $this->program;
    }

    public function setProgram(?Program $program): self
    {
        $this->program = $program;

        return $this;
    }

    public function getTimeSpace(): ?TimeSpace
    {
        return $this->timeSpace;
    }

    public function setTimeSpace(?TimeSpace $timeSpace): self
    {
        $this->timeSpace = $timeSpace;

        return $this;
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


    public function getFileName(): ?string
    {
        return $this->fileName;
    }

    public function setFileName(?string $fileName): self
    {
        $this->fileName = $fileName;

        return $this;
    }



    public function getAudioFile(): ?File
    {
        return $this->audioFile;
    }
    
}
