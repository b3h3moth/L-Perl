#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use List::Util qw(reduce);

# $result = reduce { BLOCK } @list
#
# Reduces @list by calling BLOCK in a scalar context multiple times, setting 
# $a and $b each time. The first call will be with $a and $b set to the first 
# two elements of the list, subsequent calls will be done by setting $a to the 
# result of the previous call and $b to the next element in the list.
#
# Returns the result of the last call to the BLOCK. If @list is empty then 
# undef is returned. If @list only contains one element then that element is 
# returned and BLOCK is not executed.

