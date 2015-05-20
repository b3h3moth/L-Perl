package Mouse;

use v5.14; # say()
use Animal;
use parent qw(Animal); # inheritance

sub sound { 
    'squeak'
}

sub speak {
    my $class = shift;
    Animal::speak($class);
    say "[ overriding ]";
}

1;
