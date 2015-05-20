package Horse;

use v5.14; # say()
use Animal;
use parent qw(Animal); # inheritance

sub sound {
    'neigh'
}

1;
