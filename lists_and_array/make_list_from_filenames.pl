#!/usr/bin/env perl
use warnings;
use strict;

# Take a list of filenames on the command line;
# Use grep to select the file size less than 1.000 bytes;
# Use map to transform the strings in this list (4 spaces + filename + \n);
# Print the resulting list.

# method 1
my @smaller_than_1000 = grep { (-s) < 1000 } @ARGV;
print map { "    $_\n" } @smaller_than_1000;

# method 2
# print map { " $_\n" } grep { (-s) < 1000 } @ARGV;
