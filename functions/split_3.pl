#!/usr/bin/env perl
use warnings;
use strict;

#split() without specifying the pattern or the variable:
#- the pattern is assumed to be whitespace;
#- $_ is used as the variable.

while (<>) {
    my @array = split;
    print $array[0],"\n";
}
