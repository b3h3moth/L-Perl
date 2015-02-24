#!/usr/bin/env perl
use warnings;
use strict;

#count characters and lines pf multiple file at once
die "Usage: ./a.out <filename1><filename2>\n" if (@ARGV != 2);

my $ARGC = @ARGV;

for (my $i=0; $i<$ARGC; $i++) {
    print "Getting file: $ARGV[$i]\n";
}

my $lines = 0;
my $characters = 0;

while (my $line = <>) {
    $lines++;
    $characters += length($line);
    #print "$line";
}

print "Total lines: $lines\nTotal characters: $characters\n";
