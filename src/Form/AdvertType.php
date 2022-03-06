<?php

namespace App\Form;

use App\Entity\Advertisement;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Vich\UploaderBundle\Form\Type\VichImageType;
use FOS\CKEditorBundle\Form\Type\CKEditorType;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use App\Entity\Category;
class AdvertType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('title')
            ->add('content',CKEditorType::class )
            ->add('imageFile', VichImageType::class, [
                'label' => 'Image(JPG or PNG)', 
               'required' => false,
               'allow_delete' => true,
               'imagine_pattern' => 'program_filter_square_small',
               'download_uri' => false,
           ])
           ->add('category', EntityType::class, [
            'class'=>Category::class,
            'choice_label' => 'name',
            'multiple'=>false,
           
        ])
           
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Advertisement::class,
        ]);
    }
}
