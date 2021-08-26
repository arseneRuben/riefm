<?php 

namespace App\Security;
use HWI\Bundle\OAuthBundle\Security\Core\User\EntityUserProvider;
use HWI\Bundle\OAuthBundle\OAuth\Response\UserResponseInterface;
use Symfony\Component\Security\Core\Exception\UsernameNotFoundException;
use Symfony\Component\Security\Core\Exception\UserNotFoundException;
use HWI\Bundle\OAuthBundle\Connect\AccountConnectorInterface;
use Symfony\Component\Security\Core\User\UserInterface;
use App\Entity\User;

class RieUserProvider extends EntityUserProvider implements AccountConnectorInterface {

    protected $session, $doctrine, $admins;
 
    public function __construct($session, $doctrine, $service_container)
    {
        $this->session = $session;
        $this->doctrine = $doctrine;
        $this->container = $service_container;
    }

    public function loadUserByUsername($username)
    {
 
        $qb = $this->doctrine->getManager()->createQueryBuilder();
        $qb->select('u')
            ->from('User', 'u')
            ->where('u.googleplus_id = :gid')
            ->setParameter('gid', $username)
            ->setMaxResults(1);
        $result = $qb->getQuery()->getResult();
 
        if (count($result)) {
            return $result[0];
        } else {
            return new User();
        }
    }

   public function loadUserByOAuthUserResponse(UserResponseInterface $response) {
        $resourceOwnerName = $response->getResourceOwner()->getName();

        dd($resourceOwnerName, $this->properties);
        if (!isset($this->properties[$resourceOwnerName])) {
            throw new \RuntimeException(sprintf("No property defined for entity for resource owner '%s'.", $resourceOwnerName));
        }


        $serviveName = $response->getResourceOwner()->getName();
        $setter =  'set'.ucfirst($serviveName).'ID';
        $setterAccessToken =  'set'.ucfirst($serviveName).'AccessToken';
        $username = $response->getUsername();

        $email = $response->getEmail();
        $firstName = $response->getNickname();
        $lastName = $response->getRealName();
        $avatar = $response->getProfilePicture();

        $this->session->set('email', $email);
        $this->session->set('firstName', $nickname);
        $this->session->set('lastName', $realname);
        $this->session->set('imageName', $avatar);

        //Check if this Google user already exists in our app DB
        $qb = $this->doctrine->getManager()->createQueryBuilder();
        $qb->select('u')
               ->from('User', 'u')
               ->where('u.googleplus_id = :gid')
               ->setParameter('gid', $username)
               ->setMaxResults(1);
           $result = $qb->getQuery()->getResult();
 
       // dd($resourceOwnerName, $this->properties, $username);
         /* if (null === $user = $this->loadUserByUsername(array($this->properties[$resourceOwnerName] => $username))) {

            $user = new User();
            $user->setEmail($response->getEmail());
            $user->setFirstName($response->getFirstName());
            $user->setLastName($response->getLastName());
            $user->settterId($username);
            $user->setterAccessToken($response->getAccessToken());

            $this->em->persist($user);
            $this->em->flush();
            return $user;
          $exception = new UsernameNotFoundException(sprintf("User '%s' not found.", $username));
            $exception->setUsername($username);
            throw $exception; 
        }
        $user->setFacebookAccessToken($response->getAccessToken()); */
           //add to database if doesn't exists
           if (!count($result)) {
            $user = new User();
           
            $user->setRealname($realname);
            $user->setFirstName($firstName);
            $user->setEmail($email);
            $user->setGoogleId($username);
            //$user->setRoles('ROLE_USER');
 
            //Set some wild random pass since its irrelevant, this is Google login
            $factory = $this->container->get('security.encoder_factory');
            $encoder = $factory->getEncoder($user);
            $password = $encoder->encodePassword(md5(uniqid()), $user->getSalt());
            $user->setPassword($password);
 
            $em = $this->doctrine->getManager();
            $em->persist($user);
            $em->flush();
        } else {
            $user = $result[0]; /* return User */
        }
        return $this->loadUserByUsername($response->getUsername());
       // return $user;
    
   }

   public function connect(UserInterface $user, UserResponseInterface $response) {

        if(!$user instanceof User) {
            throw new UnsupportedUserException(sprintf("Expected an instance of App\Entity\User, but '%s' given."(), \get_class($user)));
         }

         $property = $this->getProperty($response);
         $username = $response->getUsername();

         if(null !== $previousUser=$this->registry->getRepository(User::class)->findOneBy(array($property => $username))){
             $this->disconnect($previousUser, $response);
        }

        $serviveName = $response->getResourceOwner()->getName();
        $setter =  'set'.ucfirst($serviveName).'AccessToken';
        $user->$setter($response->getAccessToken());
        $this->updateUser($user, $response);

    }

    protected function getProperty(UserResponseInterface $response) {
        $resourceOwnerName = $response->getResourceOwner()->getName();

        if(!isset($this->properties[$resourceOwnerName])){
            throw new \RuntimeException(sprintf('No propert defined for entity for resource owner "%s" .', \get_class($response)));
        }
        return $this->properties[$resourceOwnerName];
    }


    protected function disconnect(UserInterface $user,UserResponseInterface $response ) {
        $property = $this->getProperty($response);
        $accessor = PropertyAccess::createPropertyAccessor();
        $accessor->setValue($user, $property, null);
        $this->updateUser($user, $response);
    }

    private function updateUser(UserInterface $user, UserResponseInterface $response){
    
        $user->setEmail($response->getEmail());
        $user->setFirstName($response->getFirstName());
        $user->setLastName($response->getLastName());
        $this->em->persist($user);
        $this->em->flush();
    }
}