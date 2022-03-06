<?php

namespace App\Form;

use App\Entity\Comment;
use Symfony\Component\Form\AbstractType;
use FOS\CKEditorBundle\Form\Type\CKEditorType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;

use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\HiddenType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\CheckboxType;
use Symfony\Component\Validator\Constraints\IsTrue;

class CommentType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            
            ->add('email', EmailType::class, [
                'label' => 'Your email',
                'attr'=>[
                    'class'=>'form-control',
                    'id' => 'comment_email'
                ]
            ])
            ->add('nickname', TextType::class,[
                'label' => 'Your username',
                'attr'=>[
                    'class'=>'form-control',
                   
                ]
            ])
            ->add('content', TextareaType::class, [
                'label'=>'Your comment',
                'attr'=>[
                    'toolbar'=>'basic',
                    'id' => 'comment_content'
                ]
            ])
            ->add('rgpd', CheckboxType::class, [
                'constraints' => [
                    new IsTrue([
                    'message' => ' Vous devez consentir pour la collecte de vos donnees personnelles'
                    ])
                ],
                'label' => 'J\'Accepte la collecte de mes donnees personnelles'
            ])
            ->add('parent', HiddenType::class, [
                'mapped' => false
            ])
            
            ->add('submit', SubmitType::class, [
                'attr'=>[
                    'class'=>' btn-sm btn btn-primary',
                    'id' => 'comment_submit',
                    
                ]
            ])   
           
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Comment::class,
            'attr' => ['id' => 'comment_form']
        ]);
    }
}
