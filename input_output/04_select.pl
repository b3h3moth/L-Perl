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
print "Using select() to write $filename into STDOUT\n";
say "but I prefer to write into filehandle, How can I do? hey hey ...";

# now print into filehandle FH
select FH;

print "I'm not an empty file...";
say "oh yes, but it's not so interesting";


# Generally is a good idea set it back to STDOUT. By default, the output to 
# each filehandle is buffered. Setting the special variable '$|' to 1 will set
# the currently selected filehandle to always flush the buffer after each
# output operation:
$| = 1;
select STDOUT;
say "cool :-)";
