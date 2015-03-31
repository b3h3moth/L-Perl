#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

#Closure is a notion out of the Lisp world that says if you define an anonymous
#function in a particular lexical context, it pretends to run in that context
#even when it's called outside the context.

sub newprint {
    my $x = shift;

    return sub {
        my $y = shift;
        print "$x, $y!\n";
    };
}

my $h = newprint("Hello");

&$h("world");
