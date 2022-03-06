<?php

namespace App\Entity;
use App\Entity\Item;
use App\Repository\AdvertisementRepository;
use Doctrine\ORM\Mapping as ORM;
use App\Entity\Traits\TimeStampable;
use App\Entity\Traits\HasUploadableField;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\HttpFoundation\File\File;
use Vich\UploaderBundle\Mapping\Annotation as Vich;

/**
 * @ORM\Entity(repositoryClass=AdvertisementRepository::class)
 * @ORM\Table(name="advertisements")
 * @ORM\HasLifecycleCallbacks
 * @Vich\Uploadable
 */
class Advertisement extends Item
{
    use TimeStampable;
    use HasUploadableField;
   
    

    /**
     * NOTE: This is not a mapped field of entity metadata, just a simple property.
     * 
     * @Vich\UploadableField(mapping="advert_image", fileNameProperty="imageName")
     * @Assert\Image(maxSize="8M")
     * 
     * @var File|null
     */
    private $imageFile;
    /**
     * @ORM\Column(type="text")
     * @Assert\NotBlank
     * @Assert\Length(min=10)
     */
    private $content;

    public function getContent(): ?string
    {
        return $this->content;
    }

    public function setContent(?string $content): self
    {
        $this->content = $content;

        return $this;
    }

   

   
}
