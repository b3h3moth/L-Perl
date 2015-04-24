#!/usr/bin/env perl
use warnings;
use strict;

# sort LIST
# sort BLOCK LIST
# sort SUBNAME LIST
#
# In list context, this sorts the LIST and returns the sorted list value. 
# If SUBNAME or BLOCK is omitted, sorts in standard string comparison order.
# If SUBNAME is specified, it gives the name of a subroutine that returns an 
# integer less than, equal to, or greater than 0, depending on how the elements
# of the list are to be ordered.

# Sorting lexically
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
