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

#read the file from filehandle and store in $line
while (my $line = <INPUT_FILE>) {
    #uc function convert each line in upper-case
    $line = uc($line);
    print "$line";
}

#filehandle is closed
close(INPUT_FILE);
