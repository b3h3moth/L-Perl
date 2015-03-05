#!/usr/bin/env perl
use warnings;
use strict;

die "Usage: ./prg.pl <filename>\n" if (@ARGV != 1);

#get file from command line
my ($file) = @ARGV;


#since version 5.6.0 we have different method: 'indirect filehandles'
open(my $input_file, "< $file");

while (my $line = <$input_file>) {
    print "$line";
 }

 close($input_file);
