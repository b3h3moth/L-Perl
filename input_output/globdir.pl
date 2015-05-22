#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# Get a list of the current directory and test each file
foreach (glob '*') {
    # remove current '.' and parent directory '..'
    # next if ($_ eq '.' or $_ eq '..');

    # print out a column, 30 characters long
    print $_, " " x (30 - length($_));

    # check if filename is a directory
    print "-d" if -d $_;

    # check if filename has read permission
    print "-r" if -r $_;

    # check if filename has write permission
    print "-w" if -w $_;

    # check if filename is executable
    print "-x" if -x $_;

    # check if filename has other users permission
    print "-o" if -o $_;

    print "\t";

    # print out the file's size
    print -s $_ if -r $_ and -f $_;

    print "\n";
}
