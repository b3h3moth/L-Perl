#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;

# The shift function perform actions on the start of the array (left side).

# shift ARRAY, LIST
# It removes/shifts the first value of the array off and returns it.
my @languages = qw(C C++ Perl AWK Python Lisp Prolog);
say 'A: ', join ', ', @languages;

my $favorite_lang = shift @languages;
say 'My favorite lang is: ', $favorite_lang;
say 'B: ', join ', ', @languages;

# unshift ARRAY, LIST
# It does the opposite of a 'shift'. It Prepends list to the front of the array
# and returns the new number of elements in the array.
unshift @languages, qw(Zsh Bash Ksh);
say 'C: ', join ', ', @languages;
