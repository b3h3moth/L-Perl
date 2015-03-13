#!/usr/bin/env perl
use warnings;
use strict;

#converts characters from lower to upper case with transileration
die "Usage: prog.pl <filename>\n" if (@ARGV != 1);

while (<>) {
    tr/[a-z]/[A-Z]/;
    print;
}

#Equivalent to the following example:
# while (<>) {
#     $_ =~ tr/[a-z]/[A-Z]/;
#     print "$_";
# }
