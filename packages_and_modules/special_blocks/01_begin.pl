#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# There are five special blocks executed at the beginning and at the end of a
# running program; these named code blocks are: BEGIN; CHECK; END; INIT; 
# UNITCHECK.

# BEGIN
# A beging block is executed as soon as possible. You may have multiple BEGIN
# blocks within a file, they will execute in order of definition.

say "Listing of directory content:";

my $find = qx/ls -l/;
print $find;

BEGIN {
    chdir ('/home/behemoth/');
    say "Do you like perl?";
}


BEGIN {
    say "Yeah. I love it";
}
