#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;

# Closure is a notion out of the Lisp world that says:
#   if you define an anonymous function in a 
#   particular lexical context, it pretends 
#   to run in that context even when it's 
#   called outside the context.

# In Perl terms closure is a subroutine that references a lexical variaable 
# that has gone out of scope.

sub print_out {
    my $salute = shift;

    my $newfunc = sub {
        my $target = shift // "world";
        print "$salute, $target\n";
    };

    # return a closure
    return $newfunc;
}

# create a closure
my $h = print_out("Hello");

$h->();
$h->("first");
$h->("second");
$h->("third");
$h->("World!");
# &$h("world");

# $h continues to refer to the value passed into print_out() despite "my $h"
# having gone out of scope by the time the anonymous subroutine runs.

# That's what a closure is all about.
