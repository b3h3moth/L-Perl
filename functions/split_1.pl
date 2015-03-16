#!/usr/bin/env perl
use warnings;
use strict;

#split(); splits a string into a list of strings and returns that list.

my $string = "take a walk on the wild side";
my @new_string = split(/\W/, $string);

foreach my $i (@new_string) {
    print "$i\n";
}
