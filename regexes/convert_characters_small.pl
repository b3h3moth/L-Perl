#!/usr/bin/env perl
use warnings;
use strict;

#converts characters from lower to upper case with transileration
die "Usage: $0 <filename>\n" if (@ARGV != 1);

while (<>) {
    tr/[a-z]/[A-Z]/;
    print;
}
