#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

#closures example

sub make_iterator {
    my @elem = @_;
    my $cont = 0;

    return sub {
        return if $cont == @elem;
        return $elem[$cont++];
    }
}

my $langs = make_iterator (
    qw(Perl C C++ AWK Scheme Lisp Python Prolog Haskell Scala Clojure)
);

say $langs->() for 1 .. 8;
#it's the same stuff
#for (1 .. 8) { say $langs->() }
