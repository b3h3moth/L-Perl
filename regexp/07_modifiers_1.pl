#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# A regular expression is one or more characters appended to the end of the 
# regex that modifies it:
# 
# /g global matching;
# /i do case-insensitive pattern matching;
# /m treat a string as a multiple line;
# /s treat string as a single line, the dot '.' metacharacter matches \n.
# /x ignore unescaped whitespace and permit comments in pattern;
# /p preserve the string matched such that ${^PREMATCH}, ${^MATCH}, and
#    ${^POSTMATCH} are available for use after matching.

my $book = "The master and Margarita";
my $author = "Author of:\n"." $book\n"."is Bulgakov";

say "A: One of my favorite book is \'$book\'" if ($book =~ /^[a-z]/i); #true
say "B: " if ($book =~ /^[a-z]/); #false

say "C: $author" if ($author =~ /master.*bulgakov/si); #true
say "D: " if ($author =~ /master.*bulgakov/s); #false

$_ = $author;

my @words = /(\S+)/g;

while( /(\S+)/g ) {
    print "\$1: $1\n";
}

#/x allows you to add arbitrary whitespace to a pattern, in order to make it
#easier to read
my $cellphone = "(+039) 1234-567890";
say "F: $cellphone" if ($cellphone =~ /
                                      ^\(       # (
                                      \+        # +
                                      \d{3}     # 3 digits
                                      \)        # )
                                      \s        # whitespace
                                      \d{4}     # 4 digits
                                      -         # -
                                      \d{6}     # 6 digits
                                      /x);
