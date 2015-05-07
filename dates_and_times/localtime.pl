#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# localtime EXPR;
# 
# Converts a time as returned by the time function to a 9-element list with the
# time analyzed for the local time zone.
#
# Typically used as follows:
#   0     1     2      3      4     5      6      7      8
# ($sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst) = 
# localtime(time);
