#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;

sub mult {
    if (@_ != 2) {
        say "WARNING! &mult() subroutines wants two parameters!";
    }

    $_[0] * $_[1];
}

say ( &mult(10) );
say ( &mult(10, 20) );
say ( &mult(10, 20, 30) );
