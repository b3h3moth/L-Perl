#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

#example on the global modifier //g
my $x = "Take a walk on the wild side (Lou Reed)";

while ($x =~ /(\w+)/g) {
    say "match \'$1\', ends at position: ", pos($x);
}
