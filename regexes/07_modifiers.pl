#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

#A regular expression is one or more characters appended to the end of the regex
#that modifies it:
#/g global matching;
#/i do case-insensitive pattern matching;
#/m treat a string as a multiple line;
#/s treat string as a single line;
#/x ignore unescaped whitespace.

my $book = "The master and Margarita";
my $author = "bulgakov";
say "A: One of my favorite book is \'$book\'" if ($book =~ /^[a-z]/i); #true
say "B: " if ($book =~ /^[a-z]/); #false
