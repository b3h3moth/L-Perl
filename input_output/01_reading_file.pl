#!/usr/bin/env perl
use warnings;
use strict;

#count characters and lines in a specified file on command line.
die "Usage: ./a.out <filename>\n" if (@ARGV != 1);
print "Getting file: $ARGV[0]\n";

my $lines = 0;
my $characters = 0;

while (my $line = <>) {
    $lines++;
    $characters += length($line);
    #print "$line";
}

print "Lines: $lines\nCharacters: $characters\n";
