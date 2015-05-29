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

# Today is:
my ($day, $month, $year) = (localtime)[3,4,5];
say "just localtime(): $year $month $day";
printf("The current date is: %04d/%02d/%02d\n", $year+1900, $month+1, $day);

my @date = (localtime)[0..8];

# print every element
foreach (@date) {
    state $i = 0;
    say $i++, ': ', $_;
}

# Today's date
my @today = (localtime)[3,4,5];
$today[1]++;
$today[2] += 1900;
my $today = join "-", @today;
say $today;
