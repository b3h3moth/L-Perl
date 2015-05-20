package Mouse;

use v5.14; # say()
use Animal;
our @ISA = qw(Animal); # inheritance

sub sound { 
    'squeak'
}

sub speak {
    my $class = shift;
    say "A $class goes ", $class->sound;
    say "[ overriding ]";
}

1;
