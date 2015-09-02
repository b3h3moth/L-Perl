#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;

# push ARRAY,LIST
# It appends the value of LIST to the end of ARRAY.
my @languages = qw(C C++ Perl AWK Python Lisp);
my @shell_scripting = qw(bash zsh);


push @languages, 'Prolog';
push @languages, @shell_scripting;
say join ', ', @languages;

pop @languages;
pop @languages;
say join ', ', @languages;

# unshift e shift aggiungono e rimuovono dalla testa
unshift @languages, qw(droga sesso rockNroll);
shift @languages;
say "@languages";
