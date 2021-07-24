<?php

namespace App\Form;

use App\Entity\Program;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Vich\UploaderBundle\Form\Type\VichImageType;

class ProgramType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('name')
            
           
            ->add('imageFile', VichImageType::class, [
                 'label' => 'Image(JPG or PNG)', 
                'required' => false,
                'allow_delete' => true,
                
               'imagine_pattern' => 'program_filter_square_small',
                'download_uri' => false,
                
            ])

            ->add('description')
            ->add('interactive')
           
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Program::class,
        ]);
    }
}
