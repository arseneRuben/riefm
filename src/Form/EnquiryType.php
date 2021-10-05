<?php

namespace App\Form;

use App\Entity\Enquiry;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;

class EnquiryType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
        ->add('subject', ChoiceType::class, array(
            'choices' => array(
                'priere' => 'SUJET DE PRIERE',
                'temoignage' => 'TEMOIGNAGE',
                'participation' => 'PARTICIPER A L EMISSION EN COURS',
                'suggestion' => 'SUGGESTION',
                 'don' => 'FAIRE UN DON',
                'autres' => 'AUTRES'
               
            ),'label' => 'Objet'))
            ->add('body')
          
            ->add('author')
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Enquiry::class,
        ]);
    }
}
