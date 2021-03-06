#!/usr/bin/env perl
use warnings;
use strict;

#count characters and lines in a specified file on command line.
die "Usage: ./prg.pl <filename>\n" if (@ARGV != 1);

print "Getting file: $ARGV[0]\n";

my $lines = 0;
my $characters = 0;

#si utilizza il 'file operator' <>
while (my $line = <>) {
    $lines++;
    $characters += length($line);
    #print "$line";
}

print "Lines: $lines\nCharacters: $characters\n";
