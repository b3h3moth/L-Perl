package Horse;

use v5.14; # say()
use Animal;
use parent qw(Animal); # inheritance

sub article {
    'An'
}

sub sound {
    'neigh'
}

1;
