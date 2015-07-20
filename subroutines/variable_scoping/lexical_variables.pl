#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# Private or Lexical variables

# my VARIABLE;
# my (LIST OF VARIABLES);
#
# It declares the listed variables to be local to the enclosing block, file, 
# or 'eval'. Note that a file is also a block.
#
# If more than one value is listed, the list must be placed in parentheses.

{ 
    my $os = 'Debian';
    say 'My Operating System is: ', $os;
}

# say $os
# Compilation error: Global symbol "$os" requires explicit package name

sub max {
    # It creates private variables and sets their value
    my ($x, $y) = @_;

    if ($x > $y) { 
        $x;
    } else {
        $y;
    }
}

# All variables declared are scoped to the ecnlosing block. Outside of the 
# block these variables don't exist.

# From 5.012 version Perl will insist that you declare every new variable, 
# usually done with 'my'.
