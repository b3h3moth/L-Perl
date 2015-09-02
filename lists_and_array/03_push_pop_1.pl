#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;

# The push/pop functions perform actions on the end of the array (right side).

# push ARRAY, LIST
# It appends the value of LIST to the end of ARRAY.
my @languages = qw(C C++ Perl AWK Python Lisp);
say 'A: ', join ', ', @languages;

my @shell_scripting = qw(bash zsh);
say 'B: ', join ', ', @languages;

push @languages, 'Prolog';
say 'C: ', join ', ', @languages;

push @languages, @shell_scripting;
say 'D: ', join ', ', @languages;

# pop ARRAY
# It pops/removes and returns the last value of the array.
my $last_value = pop @languages;
say 'The last value of the array is: ', $last_value;
say 'E: ', join ', ', @languages;

pop @languages;
say 'F: ', join ', ', @languages;
