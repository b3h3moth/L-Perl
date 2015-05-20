package Mouse;

use v5.14; # say()
use Animal;
use parent qw(Animal); # inheritance

sub article {
    'A'
}

sub sound { 
    'squeak'
}

sub speak {
    my $class = shift;
    $class->SUPER::speak(@_);
    say "[ overriding ]";
}

1;
