#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

#to match a pattern against contents of $_, put the pattern

$_ = 'arcadia';

if (/cad/) {
    say "A: pattern \/cad\/ found in string: $_";
}

$_ = 'this is a \\ backslash';

if (/\\/) {
    say "B: pattern \/\\\/ found in string: $_";
}

#in this statement, Zero is a regex and the // enclosing /Zero/ tells Perl to
#search a string for a match.
my $book = "Zero history";

say "C: it matches" if ($book =~ /Zero/);
