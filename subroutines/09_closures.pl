#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

#Closure is a notion out of the Lisp world that says if you define an anonymous
#function in a particular lexical context, it pretends to run in that context
#even when it's called outside the context.

sub print_out {
    my $x = shift;

    return sub {
        my $y = shift;
        print "$x, $y!\n";
    };
}

my $h = print_out("Hello");

&$h("world");

#$x continues to refer to the value passed into print_out() despite "my $x"
#having gone out of scope by the time the anonymous subroutine runs.
#That's what a closure is all about.
