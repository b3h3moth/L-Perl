#!/usr/bin/env perl
use warnings;
use strict;

print "Which is the best language? ";

#<STDIN> filehandle can be abbreviated to <>
my $lang = <STDIN>;
print "The best language is $lang\n";
