#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# do BLOCK
# Returns the value of the last command in the sequence of commands indicated 
# by BLOCK.  When modified by the "while" or "until" loop modifier, executes 
# the BLOCK once before testing the loop condition.
my $string = do {
    my $size = eval ( 3 * 3 );
};

say $string;
