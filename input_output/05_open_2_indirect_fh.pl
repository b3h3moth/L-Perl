#!/usr/bin/env perl
use warnings;
use strict;

#SINCE VERSION 5.6.0 WE HAVE DIFFERENT METHOD: 'indirect filehandles'

#get file from command line
my ($file) = @ARGV;

die "Usage: ./prg.pl <filename>\n" if (@ARGV != 1);

open(my $input_file, "< $file");

while (my $line = <$input_file>) {
    print "$line";
 }

 close($input_file);
