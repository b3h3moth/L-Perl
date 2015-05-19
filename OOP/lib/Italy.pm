package Italy;

use warnings;
use strict;
use v5.14;
use Country;
our @ISA = qw(Country);

sub sound { 'Ciao' };

sub speak {
    my $class = shift;
    say "an ".$class." say ".$class->sound;
}

1;
