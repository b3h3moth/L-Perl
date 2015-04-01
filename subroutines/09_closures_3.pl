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

my $languages = make_iterator (
    qw(Perl C C++ AWK Scheme Lisp Python Prolog Haskell Scala Clojure)
);

my $unixOs = make_iterator (
    qw(OpenBSD FreeBSD Debian Arch Ubuntu DragonflyBSD Fedora)
);

say $languages->() for 1..5;

#it's the same for loop as before with new lexical environment
for (1..5) { say $unixOs->() }
