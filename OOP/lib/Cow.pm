package Cow;

use v5.14; # say()
use Animal;
use parent qw(Animal); # inheritance

sub sound { 
    'mooo'
}

sub speak {
    my $class = shift;
    Animal::speak($class);
}

1;
