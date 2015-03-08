#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

#how to create a pattern to match more than one string with '|', it's a pipe
#or alternation metacharacter

my $str_1 = "perl";
my $str_2 = "testperl";
my $str_3 = "testper";

say "$str_1 ok" if ($str_1 =~ m/C|C++|AWK|Perl|Lua|Python|Lisp|Ruby/i);
say "$str_2 ok" if ($str_2 =~ m/C|C++|AWK|Perl|Lua|Python|Lisp|Ruby/i);
say "$str_3 not ok" if ($str_3 =~ m/C|C++|AWK|Perl|Lua|Python|Lisp|Ruby/i);

