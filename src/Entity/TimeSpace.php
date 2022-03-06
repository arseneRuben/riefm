<?php

namespace App\Entity;

use App\Repository\TimeSpaceRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=TimeSpaceRepository::class)
 * @ORM\Table(name="timespaces")
 */
class TimeSpace
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;


    /**
     * @ORM\Column(type="smallint")
     */
    private $dayOfTheWeek;

    /**
     * @ORM\Column(type="time")
     */
    private $startTime;

    /**
     * @ORM\Column(type="time")
     */
    private $endTime;

    /**
     * @ORM\ManyToOne(targetEntity=Program::class, inversedBy="timeSpaces")
     */
    private $program;

    /**
     * @ORM\OneToMany(targetEntity=PodCast::class, mappedBy="timeSpace")
     */
    private $podCasts;

    public function __construct()
    {
        $this->podCasts = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }



    public function getDayOfTheWeek(): ?int
    {
        return $this->dayOfTheWeek;
    }

    public function setDayOfTheWeek(int $dayOfTheWeek): self
    {
        $this->dayOfTheWeek = $dayOfTheWeek;

        return $this;
    }

    public function getStartTime(): ?\DateTimeInterface
    {
        return $this->startTime;
    }

    public function setStartTime(\DateTimeInterface $startTime): self
    {
        $this->startTime = $startTime;

        return $this;
    }

    public function getEndTime(): ?\DateTimeInterface
    {
        return $this->endTime;
    }

    public function setEndTime(\DateTimeInterface $endTime): self
    {
        $this->endTime = $endTime;

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
            $podCast->setTimeSpace($this);
        }

        return $this;
    }

    public function removePodCast(PodCast $podCast): self
    {
        if ($this->podCasts->removeElement($podCast)) {
            // set the owning side to null (unless already changed)
            if ($podCast->getTimeSpace() === $this) {
                $podCast->setTimeSpace(null);
            }
        }

        return $this;
    }
}
