package Sheep;

use v5.14; # say()
use Animal;
our @ISA = qw(Animal);

sub sound {
    'baaaaah'
}

sub speak {
    my $class = shift;
    say "A $class goes ", $class->sound;
}

1;
