<?php

namespace App\Entity;

use App\Repository\ProgramRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=ProgramRepository::class)
 * @ORM\Table(name="programs")
 */
class Program
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $name;

    /**
     * @ORM\Column(type="text")
     */
    private $description;

    /**
     * @ORM\Column(type="boolean")
     */
    private $interactive;

    /**
     * @ORM\OneToMany(targetEntity=PodCast::class, mappedBy="program")
     */
    private $podCasts;

    /**
     * @ORM\OneToMany(targetEntity=TimeSpace::class, mappedBy="program")
     */
    private $timeSpaces;

    public function __construct()
    {
        $this->podCasts = new ArrayCollection();
        $this->timeSpaces = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(string $name): self
    {
        $this->name = $name;

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

    public function getInteractive(): ?bool
    {
        return $this->interactive;
    }

    public function setInteractive(bool $interactive): self
    {
        $this->interactive = $interactive;

        return $this;
    }

    /**
     * @return Collection|PodCast[]
     */
    public function getPodCasts(): Collection
    {
        return $this->podCasts;
    }

    public function addPodCast(PodCast $podCast): self
    {
        if (!$this->podCasts->contains($podCast)) {
            $this->podCasts[] = $podCast;
            $podCast->setProgram($this);
        }

        return $this;
    }

    public function removePodCast(PodCast $podCast): self
    {
        if ($this->podCasts->removeElement($podCast)) {
            // set the owning side to null (unless already changed)
            if ($podCast->getProgram() === $this) {
                $podCast->setProgram(null);
            }
        }

        return $this;
    }

    /**
     * @return Collection|TimeSpace[]
     */
    public function getTimeSpaces(): Collection
    {
        return $this->timeSpaces;
    }

    public function addTimeSpace(TimeSpace $timeSpace): self
    {
        if (!$this->timeSpaces->contains($timeSpace)) {
            $this->timeSpaces[] = $timeSpace;
            $timeSpace->setProgram($this);
        }

        return $this;
    }

    public function removeTimeSpace(TimeSpace $timeSpace): self
    {
        if ($this->timeSpaces->removeElement($timeSpace)) {
            // set the owning side to null (unless already changed)
            if ($timeSpace->getProgram() === $this) {
                $timeSpace->setProgram(null);
            }
        }

        return $this;
    }
}
