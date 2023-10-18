<?php

namespace App\Entity\Traits;

use Symfony\Component\HttpFoundation\File\File;
use Symfony\Component\Serializer\Annotation\Groups;


trait HasUploadableField
{

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     * @Groups({"getPodCasts"})
     */
    private $imageName;

    /**
     * NOTE: This is not a mapped field of entity metadata, just a simple property.
     * @Groups({"getPodCasts"})
     * @Vich\UploadableField(mapping="podcast_image", fileNameProperty="imageName")
     * @Assert\Image(
     *     maxSize = "8M",     
     *     mimeTypesMessage = "Please upload a valid Image"
     * )
     * @var File|null
     */
    private $imageFile;


    public function getImageName(): ?string
    {
        return $this->imageName;
    }

    public function setImageName(?string $imageName): self
    {
        $this->imageName = $imageName;

        return $this;
    }


    /**
     * @param File|\Symfony\Component\HttpFoundation\File\UploadedFile|null $imageFile
     */
    public function setImageFile(?File $imageFile = null): void
    {
        $this->imageFile = $imageFile;

        if (null !== $imageFile) {
            // It is required that at least one field changes if you are using doctrine
            // otherwise the event listeners won't be called and the file is lost
            $this->setUpdatedAt(new \DateTimeImmutable());
        }
    }

    public function getImageFile(): ?File
    {
        return $this->imageFile;
    }
}
