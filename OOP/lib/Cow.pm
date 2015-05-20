package Cow;

use v5.14; # say()
use Animal;
our @ISA = qw(Animal);

sub sound { 
    'mooo'
}

sub speak {
    my $class = shift;
    say "A $class goes ", $class->sound;
}

1;
