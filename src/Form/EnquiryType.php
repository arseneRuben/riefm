<?php

namespace App\Form;

use App\Entity\Enquiry;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;

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
               
            ),'label' => 'Objet',
            'attr' => array('style' => ' width: 500px')))
            ->add('body', TextareaType::class, [
                'label' => 'Message', 
                'attr' => array('style' => 'width: 500px ; height: 200px')
            ]);
        
          
        
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Enquiry::class,
        ]);
    }
}
