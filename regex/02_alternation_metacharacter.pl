#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

#how to create a pattern to match more than one string with '|', it's a pipe
#or alternation metacharacter
my $lang = "perl";

say "$lang is awesome" if ($lang =~ m/C|C++|AWK|Perl|Lua|Python|Lisp|Ruby/i);

my $sport = "football";

#use parentheses for grouping metacharacters
say "I like $sport" if ($sport =~ m/(foot|basket|roller|speed)ball/);

my $name = "behemoth";
say "My name is $name" if ($name =~ m/be(he|h3|re|ge)mo(a|h|y|o|t|z|)h/);
