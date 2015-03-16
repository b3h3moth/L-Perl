#!/usr/bin/env perl
use warnings;
use strict;

#split() without specifying the pattern or the variable:
#- the pattern is assumed to be whitespace;
#- $_ is used as the variable.

die "Usage: prog.pl <filename>\n" if (@ARGV != 1);

while (<>) {
    my @array = split;
    #print the first string of each line delimited by whitespace
    print $array[0],"\n";
}
