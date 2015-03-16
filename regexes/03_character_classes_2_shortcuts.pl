#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

#CHARACTER CLASS SHORTCUTS
# \d is a digit and represents [0-9];
# \s is a whitespace character and represents [\ \t\r\n\f];
# \w is a word character (alphanumeric or _) and represents [0-9a-zA-Z_];
# \D is a negated \d, it represents any character but a digit [^0-9];
# \S is a negated \s, it represents any non-whitespace character [^\s];
# \W is a negated \w; it represents any non-word character [^\w];
# \h is a horizontal whitespace character;
# \H is a character that isn't horizontal whitespace;
# \v is a vertical whitespace character;
# \V is a character that isn't vertical whitespace;
# \N is a character that isn't a newline.  Experimental;
# \pP, \p{Prop} is a character that has the given Unicode property;
# \PP, \P{Prop} is a character that doesn't have the Unicode property;
# The period '.' matches any character but "\n"
###############################################################################

my $name = "luca";
my $alias = "mister behemoth";
my $book = "count zero";
my $string1 = " string";
my $string2 = "string";
my $year = "2015";

say "A: Hi $name" if ($name =~ /\w+/); #true, match a word
say "B: $alias" if ($alias =~ /\w+\s+\w+/); #true, match word whitespace word
say "C: $book" if ($book =~ /\w+\W+\w+/); #true, match word whitespace word
say "D: " if ($string1 =~ /^\S/); #false, doesn't start with whitespace
say "E: true" if ($string2 =~ /^\S/); #true, doesn't start with whitespace
say "F: true" if ($string1 =~ /^(\w|\W)/); #true, start with words or whitespace
say "G: true" if ($year =~ /\d+/); #true, match a digit
say "H: true" if ($name =~ /\D+/); #true, match a non digit
