#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;

# push ARRAY,LIST
# It appends the value of LIST to the end of ARRAY.
my @languages = qw(C C++ Perl AWK Python Lisp);
say 'A: ', join ', ', @languages;

my @shell_scripting = qw(bash zsh);
say 'B: ', join ', ', @languages;


push @languages, 'Prolog';
say 'C: ', join ', ', @languages;

push @languages, @shell_scripting;
say 'D: ', join ', ', @languages;

pop @languages;
say 'E: ', join ', ', @languages;

pop @languages;
say 'F: ', join ', ', @languages;

# unshift e shift aggiungono e rimuovono dalla testa
unshift @languages, qw(droga sesso rockNroll);
shift @languages;
say "@languages";
