#!/usr/bin/env perl
use warnings;
use strict;

#get file from command line
my ($file) = @ARGV;

#open the file for reading.
#INPUT_FILE is the name of filehandle
#< is the mode, in this case reading from the file
#$file is the filename.
open(INPUT_FILE, "< $file");

while (my $line = <INPUT_FILE>) {
    $line = uc($line);
    print "$line";
}

close(INPUT_FILE);
