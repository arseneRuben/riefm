<?php

namespace App\Form;

use App\Entity\PodCast;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Vich\UploaderBundle\Form\Type\VichImageType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\Validator\Constraints\File;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use App\Entity\Category;

class PodCastType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
           
            ->add('title')
            ->add('imageFile', VichImageType::class, [
                'label' => 'Image(JPG or PNG)', 
               'required' => false,
               'allow_delete' => true,
               
              'imagine_pattern' => 'program_filter_square_small',
               'download_uri' => false,
               
           ])
           ->add('author')
           ->add('audioFile', FileType::class, [
            'label' => ' file',
            'mapped' => false,
                'constraints' => [
                    new File([
                        'maxSize' => '256M',
                        'mimeTypes' => [
                            'application/octet-stream',
                            'audio/mpeg',
                            'audio/mp3'
                        ],
                        'mimeTypesMessage' => 'Please upload a valid music file',
                    ])
                ]
           
       ])
           ->add('description', TextType::class, [
            'label' => 'list Keywords ',
            'required' => true,
            'constraints' => new Assert\NotBlank(),
            'trim' => true])
            ->add('program')
            
            //->add('timeSpace')
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => PodCast::class,
        ]);
    }
}
