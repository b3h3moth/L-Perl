#!/usr/bin/env perl
use warnings;
use strict;

my @data = qw(31 BSD linux 3  OpenBSD 1973 0 unix freeBSD kernel 69 48 25);
print "before sorting: @data\n";

#basic alphanumerical sort
@data = sort @data;
print " after sorting: @data\n";

#compare alphabetic
@data = sort {$a cmp $b} @data;
print "     after cmp: @data\n";

#compare strings (warnings will appear)
@data = sort {$a <=> $b} @data;
print "     after <=>: @data\n";

no warnings;
#compare mix strings and numbers
@data = sort {$a <=> $b or $a cmp $b} @data;
print "after <=>orcmp: @data\n";
use warnings;
