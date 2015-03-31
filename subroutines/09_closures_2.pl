#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

#closures example

sub fibonacci_series {
    my ($cur, $next) = (0,1);

    return sub {
        my $fibonacci = $cur;
        ($cur, $next) = ($next, $cur + $next);
        return $fibonacci;
    };
}

my $iterator = fibonacci_series();

for (1..25) {
    my $fibonacci = $iterator->();
    say "$fibonacci";
}
