<?php

namespace App\Entity;

use App\Repository\PodCastRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Serializer\Annotation\Groups;
use App\Entity\Item;
use App\Entity\Traits\HasUploadableField;
use App\Entity\Traits\TimeStampable;
use Vich\UploaderBundle\Mapping\Annotation as Vich;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\HttpFoundation\File\File;

/**
 * @ORM\Entity(repositoryClass=PodCastRepository::class)
 * @ORM\HasLifecycleCallbacks
 * @ORM\Table(name="podcasts")
 * @Vich\Uploadable
 */
class PodCast extends Item
{
    use HasUploadableField;
    use TimeStampable;



    /**
     * NOTE: This is not a mapped field of entity metadata, just a simple property.
     * 
     * @Vich\UploadableField(mapping="podcast_file", fileNameProperty="fileName")
     * @Assert\File(
     *     maxSize = "120M",
     *     mimeTypesMessage = "Please upload a valid Audio File"
     * )
     * @Groups({"getPodCasts"})
     * 
     * @var File|null
     */
    private $audioFile;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     * @Groups({"getPodCasts"})
     */
    private $fileName;

    /**
     * @ORM\Column(type="text")
     * @Groups({"getPodCasts"})
     */
    private $description;

    /**
     * @ORM\ManyToOne(targetEntity=Program::class, inversedBy="podCasts")
     * @ORM\JoinColumn(nullable=false)
     * @Groups({"getPodCasts"})
     */
    private $program;

    /**
     * @ORM\ManyToOne(targetEntity=TimeSpace::class, inversedBy="podCasts")
     * @ORM\JoinColumn(nullable=true)
     * @Groups({"getPodCasts"})
     */
    private $timeSpace;






    public function __construct()
    {
        $this->comments = new ArrayCollection();
    }


    public function getId(): ?int
    {
        return $this->id;
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

    /**
     * @return Collection|Comment[]
     */
    public function getComments(): Collection
    {
        return $this->comments;
    }

    public function addComment(Comment $comment): self
    {
        if (!$this->comments->contains($comment)) {
            $this->comments[] = $comment;
            $comment->setItem($this);
        }

        return $this;
    }

    public function removeComment(Comment $comment): self
    {
        if ($this->comments->removeElement($comment)) {
            // set the owning side to null (unless already changed)
            if ($comment->getItem() === $this) {
                $comment->setItem(null);
            }
        }

        return $this;
    }

    public function __toString()
    {
        $username = (is_null($this->getFileName())) ? "" : $this->getFileName();
        return $username;
    }
}
