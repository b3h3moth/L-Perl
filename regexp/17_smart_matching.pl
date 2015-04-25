#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# The smart match operator ~~ looks at both of its operands and decides on its
# own how it should compare them. If the operands look like numbers, it does a
# numeric comparison. If they look like strings, it does a string comparison.
# If one of the operands is a regular expression, it does a pattern match.
# It can also do some complex tasks that would otherwise take a lot of code,
# so it keeps you from doing too much typing.
# Returns a true value if operands match.

my $text = "Perl is one the best languages to manage UNIX systems";
my $perl_version = 5.20;

say "A: strings" if ($text ~~ /perl/i);
say "B: numbers" if ($perl_version ~~ 5.20);

my @italian_names = qw(mario luca gabriele michele maria lucia giovanni);
my @english_names = qw(mario luca gabriele michele maria lucia giovanni);

# The arrays have the same elements
say "C: array" if (@italian_names ~~ @english_names);

my @ita_football_team = qw(juventus milan inter roma lazio napoli palermo);
my @eng_football_team = qw(juventus milan inter roma lazio napoli palermo);

# The arrays have the same elements
say "D: hash" if (@ita_football_team ~~ @eng_football_team);
