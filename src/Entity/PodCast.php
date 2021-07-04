<?php

namespace App\Entity;

use App\Repository\PodCastRepository;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=PodCastRepository::class)
 * @ORM\Table(name="podcasts")
 */
class PodCast
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

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
     * @ORM\JoinColumn(nullable=false)
     */
    private $timeSpace;

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
}
