#!/usr/bin/env perl
use warnings;
use strict;

#get file from command line
my ($filename) = @ARGV;

#open the file for reading.
#INPUT is the name of filehandle
#< is the mode, in this case reading from the file
#$filename is the filename.
open(INPUT, "< $filename");

#read the file from filehandle and store in $line
while (my $line = <INPUT>) {
    #ucfirst() function convert each first character of line in upper-case
    $line = ucfirst($line);
    print "$line";
}

#filehandle is closed
close(INPUT);

#If I have a file called 'pass.txt' and his name is stored in a $filename
#variable, then all of the following do the same thing:
#open(INPUT, "< $filename");
#open(INPUT, "<$filename");
#open(INPUT, "<pass.txt");
#open(INPUT, "pass.txt");
#open(INPUT, "<", "$filename");
#open(INPUT, "<", "pass.txt");
