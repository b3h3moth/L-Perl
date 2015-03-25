#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

#the open() function can be used to read from and write to programs, this is
#done by appending or prepending pipe.

#the first pipe: reading file with 'cat' command
open(my $INPUT, "cat /etc/passwd |") or die "first pipe failed";

while (<$INPUT>) {
    #each line is stored in $_.
    #print $_; is the same thing
    print;
}

#the second pipe: sending input to wc program
open(my $OUTPUT, "| wc /etc/passwd") or die "second pipe failed";

close($INPUT);
close($OUTPUT);
