#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# Get a list of the current directory and test each file
foreach (glob '*') {
    # remove current '.' and parent directory '..'
    # next if ($_ eq '.' or $_ eq '..');

    # trunc filename if greater than 30 characters
    print $_, " " x (30 - length($_));

    print "-d" if -d $_;
    print "-r" if -r $_;
    print "-w" if -w $_;
    print "-x" if -x $_;
    print "-o" if -o $_;
    print "\t";
    print -s $_ if -r $_ and -f $_;
    print "\n";
}
