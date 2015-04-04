#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my $lang = "perl";

#how to create a pattern to match more than one string with '|', it's a pipe
#or alternation metacharacter
say "$lang is awesome" if ($lang =~ m/C|C++|AWK|Perl|Lua|Python|Lisp|Ruby/i);
