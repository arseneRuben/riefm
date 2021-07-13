<?php

namespace App\Entity;

use App\Repository\UserRepository;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Security\Core\User\PasswordAuthenticatedUserInterface;
use Symfony\Component\Security\Core\User\UserInterface;

/**
 * @ORM\Entity(repositoryClass=UserRepository::class)
 */
class User implements UserInterface, PasswordAuthenticatedUserInterface
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=180, unique=true)
     */
    private $email;

    /**
     * @ORM\Column(type="json")
     */
    private $roles = [];

    /**
     * @var string The hashed password
     * @ORM\Column(type="string")
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

    public function setGithubId($githubId) {
        $this->github_id = $githubId;

        return $this;
    }

    public function getGithubId() {
        return $this->github_id;
    }

    public function setGithubAccessToken($githubAccessToken) {
        $this->github_access_token = $githubAccessToken;

        return $this;
    }

    public function getGithubAccessToken() {
        return $this->github_access_token;
    }

    public function setFacebookId($facebookID) {
        $this->facebook_id = $facebookID;

        return $this;
    }

    public function getFacebookId() {
        return $this->facebook_id;
    }

    public function setFacebookAccessToken($facebookAccessToken) {
        $this->facebook_access_token = $facebookAccessToken;

        return $this;
    }

    public function getFacebookAccessToken() {
        return $this->facebook_access_token;
    }

    public function setGoogleplusId($googlePlusId) {
        $this->googleplus_id = $googlePlusId;

        return $this;
    }

    public function getGoogleplusId() {
        return $this->googleplus_id;
    }

    public function setGoogleplusAccessToken($googleplusAccessToken) {
        $this->googleplus_access_token = $googleplusAccessToken;

        return $this;
    }

    public function getGoogleplusAccessToken() {
        return $this->googleplus_access_token;
    }


    public function setStackexchangeId($stackExchangeId) {
        $this->stackexchange_id = $stackExchangeId;

        return $this;
    }

    public function getStackexchangeId() {
        return $this->stackexchange_id;
    }

    public function setStackexchangeAccessToken($stackExchangeAccessToken) {
        $this->stackexchange_access_token = $stackExchangeAccessToken;

        return $this;
    }

    public function getStackexchangeAccessToken() {
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
        // guarantee every user at least has ROLE_USER
        $roles[] = 'ROLE_USER';

        return array_unique($roles);
    }

    public function setRoles(array $roles): self
    {
        $this->roles = $roles;

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

  
}
