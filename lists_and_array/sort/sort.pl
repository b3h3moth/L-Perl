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

my @data = qw(j BSD linux 3  OpenBSD 1973 Gnu unix freeBSD kernel 69 arch 25);
my @numbers = qw(2 9 35 4 100 8 0 27 9 73 48 4 2 73 10 6 102 374 8 3 742);

print "    before sorting: @data\n";
print "    before sorting: @numbers\n";

# Sorting lexically
@data = sort @data;
print "     after sorting: @data\n";

# Sorting with explicit sort routine
@data = sort {$a cmp $b} @data;
print "         after cmp: @data\n";

# Sorting with case-insensitively
@data = sort {uc($a) cmp uc($b)} @data;
print "case-insensitively: @data\n";

# Sorting with reversed order
@data = sort {$b cmp $a} @data;
print "     reverse order: @data\n";

 # Sorting numerically ascending
@data = sort {$a <=> $b} @numbers;
print "    num. ascending: @data\n";

# Sorting numerically descending
@data = sort {$b <=> $a} @data;
print "   num. descending: @numbers\n";

# Compare string
@data = sort {$a <=> $b} @data;
print "   compare strings: @data\n";

# Compare mix strings and numbers
@data = sort {$a <=> $b or $a cmp $b} @data;
print "   strings OR num.: @data\n";
