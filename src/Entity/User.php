<?php

namespace App\Entity;

use App\Entity\Item;
use App\Entity\Category;
use App\Repository\UserRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Bridge\Doctrine\Validator\Constraints\UniqueEntity;
use Symfony\Component\Security\Core\User\PasswordAuthenticatedUserInterface;
use Symfony\Component\Security\Core\User\UserInterface;
use Vich\UploaderBundle\Mapping\Annotation as Vich;
use Symfony\Component\Serializer\Annotation\Groups;

use App\Entity\Traits\HasUploadableField;
use App\Entity\Traits\TimeStampable;
use Symfony\Component\Validator\Constraints as Assert;


/**
 * @ORM\Entity(repositoryClass=UserRepository::class)
 * @Vich\Uploadable
 * @ORM\HasLifecycleCallbacks
 * @ORM\Table(name="users")
 * @UniqueEntity(fields={"email"}, message="There is already an account with this email")
 * @UniqueEntity(fields={"firstName", "lastName"}, message="There is already an account with this firstname and lastname")
 */
class User implements UserInterface, PasswordAuthenticatedUserInterface
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
     * @ORM\Column(type="string", length=180, unique=true)
     * @Assert\Email()
     * @Groups({"getPodCasts"})
     */
    private $email;

    /**
     * @ORM\Column(type="json")
     */
    private $roles = [];

    /**
     * @var string The hashed password
     * @ORM\Column(type="string",length=255, nullable=true)
     
     */
    private $password;

    /** @ORM\Column(name="github_id", type="string", length=255, nullable=true) */
    private $github_id;

    /** @ORM\Column(name="github_access_token", type="string", length=255, nullable=true) */
    private $github_access_token;

    /** @ORM\Column(name="facebook_id", type="string", length=255, nullable=true) */
    private $facebook_id;

    /** @ORM\Column(name="facebook_access_token", type="string", length=255, nullable=true) */
    private $facebook_access_token;

    /** @ORM\Column(name="googleplus_id", type="string", length=255, nullable=true) */
    private $googleplus_id;

    /** @ORM\Column(name="googleplus_access_token", type="string", length=255, nullable=true) */
    private $googleplus_access_token;

    /** @ORM\Column(name="linkedin_id", type="string", length=255, nullable=true) */
    private $linkedin_id;

    /** @ORM\Column(name="linkedin_access_token", type="string", length=255, nullable=true) */
    private $linkedin_access_token;

    /** @ORM\Column(name="stackexchange_id", type="string", length=255, nullable=true) */
    private $stackexchange_id;

    /** @ORM\Column(name="stackexchange_access_token", type="string", length=255, nullable=true) */
    private $stackexchange_access_token;

    /**
     * @ORM\OneToMany(targetEntity=Item::class, mappedBy="author")
     */
    private $items;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     * @Assert\NotBlank
     * @Groups({"getPodCasts"})
     */
    private $firstName;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     * @Groups({"getPodCasts"})
     */
    private $lastName;

    /**
     * @ORM\Column(type="boolean")
     */
    private $isVerified = false;

    /**
     * @ORM\OneToMany(targetEntity=Video::class, mappedBy="author")
     */
    private $videos;

    /**
     * @ORM\OneToMany(targetEntity=Enquiry::class, mappedBy="author")
     */
    private $enquiries;

    /**
     * @ORM\OneToMany(targetEntity=Temoignage::class, mappedBy="author")
     */
    private $temoignages;

    /**
     * @ORM\OneToMany(targetEntity=Comment::class, mappedBy="Author", orphanRemoval=true)
     */
    private $comments;

    /**
     * @ORM\ManyToMany(targetEntity=Category::class, inversedBy="users")
     */
    private $categories;






    public function __construct()
    {
        // guarantee every user at least has ROLE_USER
        $this->setRoles(['ROLE_USER', 'ROLE_ADMIN']);
        $this->videos = new ArrayCollection();
        $this->enquiries = new ArrayCollection();
        $this->temoignages = new ArrayCollection();
        $this->comments = new ArrayCollection();

        $this->categories = new ArrayCollection();
    }

    public function setGithubId($githubId)
    {
        $this->github_id = $githubId;

        return $this;
    }

    public function getGithubId()
    {
        return $this->github_id;
    }

    public function setGithubAccessToken($githubAccessToken)
    {
        $this->github_access_token = $githubAccessToken;

        return $this;
    }

    public function getGithubAccessToken()
    {
        return $this->github_access_token;
    }

    public function setFacebookId($facebookID)
    {
        $this->facebook_id = $facebookID;

        return $this;
    }

    public function getFacebookId()
    {
        return $this->facebook_id;
    }

    public function setFacebookAccessToken($facebookAccessToken)
    {
        $this->facebook_access_token = $facebookAccessToken;

        return $this;
    }

    public function getFacebookAccessToken()
    {
        return $this->facebook_access_token;
    }

    public function setGoogleplusId($googlePlusId)
    {
        $this->googleplus_id = $googlePlusId;

        return $this;
    }

    public function getGoogleplusId()
    {
        return $this->googleplus_id;
    }

    public function setGoogleplusAccessToken($googleplusAccessToken)
    {
        $this->googleplus_access_token = $googleplusAccessToken;

        return $this;
    }

    public function getGoogleplusAccessToken()
    {
        return $this->googleplus_access_token;
    }


    public function setStackexchangeId($stackExchangeId)
    {
        $this->stackexchange_id = $stackExchangeId;

        return $this;
    }

    public function getStackexchangeId()
    {
        return $this->stackexchange_id;
    }

    public function setStackexchangeAccessToken($stackExchangeAccessToken)
    {
        $this->stackexchange_access_token = $stackExchangeAccessToken;

        return $this;
    }

    public function getStackexchangeAccessToken()
    {
        return $this->stackexchange_access_token;
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getEmail(): ?string
    {
        return $this->email;
    }

    public function setEmail(string $email): self
    {
        $this->email = $email;

        return $this;
    }

    /**
     * A visual identifier that represents this user.
     *
     * @see UserInterface
     */
    public function getUserIdentifier(): string
    {
        return (string) $this->email;
    }

    /**
     * @deprecated since Symfony 5.3, use getUserIdentifier instead
     */
    public function getUsername(): string
    {
        return (string) $this->email;
    }

    /**
     * @see UserInterface
     */
    public function getRoles(): array
    {
        $roles = $this->roles;


        return array_unique($roles);
    }

    public function setRoles(array $roles): self
    {
        $this->roles = $roles;

        return $this;
    }

    public function addRole($role): self
    {
        array_push($this->roles, $role);
        $this->setRoles(array_unique($this->roles));
        return $this;
    }

    /**
     * @see PasswordAuthenticatedUserInterface
     */
    public function getPassword(): string
    {
        return $this->password;
    }

    public function setPassword(string $password): self
    {
        $this->password = $password;

        return $this;
    }

    /**
     * Returning a salt is only needed, if you are not using a modern
     * hashing algorithm (e.g. bcrypt or sodium) in your security.yaml.
     *
     * @see UserInterface
     */
    public function getSalt(): ?string
    {
        return null;
    }

    /**
     * @see UserInterface
     */
    public function eraseCredentials()
    {
        // If you store any temporary, sensitive data on the user, clear it here
        // $this->plainPassword = null;
    }




    public function getFirstName(): ?string
    {
        return $this->firstName;
    }

    public function setFirstName(?string $firstName): self
    {
        $this->firstName = $firstName;

        return $this;
    }

    public function getLastName(): ?string
    {
        return $this->lastName;
    }

    public function setLastName(string $lastName): self
    {
        $this->lastName = $lastName;

        return $this;
    }

    public function getAvatar(int $size = 50): ?string
    {
        return "https://www.gravatar.com/avatar/" . md5(strtolower(trim($this->getEmail()))) . "/?s=" . $size;
    }

    public function getFullName(): ?string
    {
        return $this->firstName . ' ' . $this->lastName;
    }

    public function __toString()
    {
        $username = (is_null($this->getFullName())) ? "" : $this->getFullName();
        return $username;
    }



    public function isVerified(): bool
    {
        return $this->isVerified;
    }

    public function setIsVerified(bool $isVerified): self
    {
        $this->isVerified = $isVerified;

        return $this;
    }

    /**
     * @return Collection|Video[]
     */
    public function getVideos(): Collection
    {
        return $this->videos;
    }

    public function addVideo(Video $video): self
    {
        if (!$this->videos->contains($video)) {
            $this->videos[] = $video;
            $video->setAuthor($this);
        }

        return $this;
    }

    public function removeVideo(Video $video): self
    {
        if ($this->videos->removeElement($video)) {
            // set the owning side to null (unless already changed)
            if ($video->getAuthor() === $this) {
                $video->setAuthor(null);
            }
        }

        return $this;
    }

    /**
     * @return Collection|Enquiry[]
     */
    public function getEnquiries(): Collection
    {
        return $this->enquiries;
    }

    public function addEnquiry(Enquiry $enquiry): self
    {
        if (!$this->enquiries->contains($enquiry)) {
            $this->enquiries[] = $enquiry;
            $enquiry->setAuthor($this);
        }

        return $this;
    }

    public function removeEnquiry(Enquiry $enquiry): self
    {
        if ($this->enquiries->removeElement($enquiry)) {
            // set the owning side to null (unless already changed)
            if ($enquiry->getAuthor() === $this) {
                $enquiry->setAuthor(null);
            }
        }

        return $this;
    }

    /**
     * @return Collection|Temoignage[]
     */
    public function getTemoignages(): Collection
    {
        return $this->temoignages;
    }

    public function addTemoignage(Temoignage $temoignage): self
    {
        if (!$this->temoignages->contains($temoignage)) {
            $this->temoignages[] = $temoignage;
            $temoignage->setAuthor($this);
        }

        return $this;
    }

    public function removeTemoignage(Temoignage $temoignage): self
    {
        if ($this->temoignages->removeElement($temoignage)) {
            // set the owning side to null (unless already changed)
            if ($temoignage->getAuthor() === $this) {
                $temoignage->setAuthor(null);
            }
        }

        return $this;
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
            $comment->setAuthor($this);
        }

        return $this;
    }

    public function removeComment(Comment $comment): self
    {
        if ($this->comments->removeElement($comment)) {
            // set the owning side to null (unless already changed)
            if ($comment->getAuthor() === $this) {
                $comment->setAuthor(null);
            }
        }

        return $this;
    }

    /**
     * @return Collection|Category[]
     */
    public function getCategories(): Collection
    {
        return $this->categories;
    }

    public function addCategory(Category $category): self
    {
        if (!$this->categories->contains($category)) {
            $this->categories[] = $category;
            $category->addUser($this);
        }

        return $this;
    }

    public function removeCategory(Category $category): self
    {
        if ($this->categories->removeElement($category)) {
            $category->removeUser($this);
        }

        return $this;
    }

    public function getLinkedinId(): ?string
    {
        return $this->linkedin_id;
    }

    public function setLinkedinId(?string $linkedin_id): self
    {
        $this->linkedin_id = $linkedin_id;

        return $this;
    }

    public function getLinkedinAccessToken(): ?string
    {
        return $this->linkedin_access_token;
    }

    public function setLinkedinAccessToken(?string $linkedin_access_token): self
    {
        $this->linkedin_access_token = $linkedin_access_token;

        return $this;
    }

    public function getIsVerified(): ?bool
    {
        return $this->isVerified;
    }
}
