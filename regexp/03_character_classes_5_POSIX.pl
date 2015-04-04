#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

#POSIX Character Classes have the form [:class:], where class is name, and the
#[: and :] delimiters.
#
#[:alpha:] any alphabetical character ("[A-Za-z]");
#[:alnum:] any alphanumeric character. ("[A-Za-z0-9]");
#[:ascii:] any character in the ASCII character set;
#[:blank:] a GNU extension, equal to a space or a horizontal tab ("\t");
#[:cntrl:] any control character;
#[:digit:] any decimal digit ("[0-9]"), equivalent to "\d";
#[:graph:] any printable character, excluding a space;
#[:lower:] any lowercase character ("[a-z]");
#[:print:] any printable character, including a space;
#[:punct:] any graphical character excluding "word" characters;
#[:space:] any whitespace character. "\s" plus the vertical tab ("\cK");
#[:upper:] any uppercase character ("[A-Z]");
#[:word:]  Perl extension ("[A-Za-z0-9_]"), equivalent to "\w";
#[:xdigit:] any hexadecimal digit ("[0-9a-fA-F]").

my $string = "b3h3m0th";
my $book = "perl programming";

say "A: $string is alpha" if ($string =~ /[[:alpha:]]/);
say "B: $string is alnum" if ($string =~ /[[:alnum:]]/);
say "C: $string is ascii" if ($string =~ /[[:ascii:]]/);
say "D: $book is blank" if ($book =~ /[[:blank:]]/);
