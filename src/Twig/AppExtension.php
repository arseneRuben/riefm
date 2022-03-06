<?php

namespace App\Twig;

use Twig\Extension\AbstractExtension;
use Twig\TwigFilter;
use Twig\TwigFunction;
use Symfony\Component\Security\Core\Security;

class AppExtension extends AbstractExtension
{
    private $security;

    public function __construct(Security $security) {
       $this->security = $security;
    }


    public function getFilters(): array
    {
        return [
            // If your filter generates SAFE HTML, you should add a third
            // parameter: ['is_safe' => ['html']]
            // Reference: https://twig.symfony.com/doc/2.x/advanced.html#automatic-escaping
            new TwigFilter('filter_name', [$this, 'pluralize']),
        ];
    }

    public function getFunctions(): array
    {
        return [
            new TwigFunction('pluralize', [$this, 'pluralize']),
        ];
    }

    public function pluralize(int $count, string $sing, ?string $plu = null): string
    {
        $plu ??= $sing . 's' ;
        return $count == 1 ? "$count $sing"  :  "$count $plu" ;
    }
}
