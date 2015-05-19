package Country::Italy;

use warnings;
use strict;
use v5.14;

sub speak {
    my $class = shift;
    say "a $class say Ciao";
}

1;

