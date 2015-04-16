#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# (?!...)   zero-width negative look-ahead assertion
# (?=...)   zero-width positive look-ahead assertion
# (?<!...)  zero-width negaitve look-behind assertion
# (?<=...)  zero-width positive look-behind assertion
# \K        keep assertion

my $singer = 'bob marley';
my $text = 'acab';

say "A: I love $singer" if ($singer =~ /bob\s?(?=marley)/);
say "B: 1.3.1.2." if ($text =~ /ac(?=ab)/);
say "C: get up stand up ... " if ($singer =~ /bob\s?(?!geldof)/);
