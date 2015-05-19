package Country::Italy;

use warnings;
use strict;
use v5.14;

sub sound { 'Ciao' };

sub speak {
    my $class = shift;
    say "In ".$class." say ".$class->sound;
}

1;
