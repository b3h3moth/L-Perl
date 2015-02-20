#!/usr/bin/env perl
use warnings;
use strict;
use v5.10;

my @skills = qw(C C++ Perl Bash Ksh Perl Unix BSD GNU/Linux Security Lisp);

#each itera su un array per indice e valore
while (my ($indice, $valore) = each @skills)
{
    say "$indice: $valore";
}
