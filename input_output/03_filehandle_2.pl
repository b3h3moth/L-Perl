#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# select
# Returns the currently selected filehandle. By default, if you don't give a 
# filehandle to print the output will go to STDOUT.

die "Usage: $0 <filename>\n" if (@ARGV != 1);

my ($filename) = @ARGV;

if ( ! open(PASS, '>', "$filename")) {
    die "Cannot open $filename: $!\n";
}

select PASS;
print "Using select() to write with filehandle\n";

close(PASS);
