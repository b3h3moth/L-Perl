#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# select
# Returns the currently selected filehandle. By default, if you don't give a
# filehandle to print the output will go to STDOUT.

die "Usage: $0 <filename>\n" if (@ARGV != 1);

my ($filename) = @ARGV;

if ( ! open(FH, '>', "$filename")) {
    die "Cannot open $filename: $!\n";
}

# print into STDOUT
select STDOUT;
print "Using select() to write into STDOUT\n";
say "but I prefer to write into filehandle, How can I do? hey hey ...";

# now print into filehandle FH
select FH;

print "cool, now $filename is not empty\n";
say "yes but it's not so interesting";

close(FH);
