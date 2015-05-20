package Cow;

use v5.14; # say()
use Animal;
use parent qw(Animal); # inheritance

sub article {
    'A'
}

sub sound { 
    'mooo'
}

1;
