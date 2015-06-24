#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use List::Util qw(max);

# The smart match operator ~~ looks at both of its operands and decides on its
# own how it should compare them. If the operands look like numbers, it does a
# numeric comparison. If they look like strings, it does a string comparison.
# If one of the operands is a regular expression, it does a pattern match.
# It can also do some complex tasks that would otherwise take a lot of code,
# so it keeps you from doing too much typing.
# Returns a true value if operands match.

my $text = "Perl is one the best languages to manage UNIX systems";
my $perl_version = 5.20;
my @numbers = qw(1 2 3 5 8 13 21 34 55 89);
my $result = max(@numbers);

my %club_a = (
    torino => 'juventus',
    milano => ' milan',
    roma => 'roma',
    genova => 'sampdoria',
);

my %club_b = (
    torino => 'juventus',
    milano => ' milan',
    roma => 'roma',
    genova => 'sampdoria',
);

# Compare strings
say "A: Find 'perl'" if ($text ~~ /perl/i);

# Compare numbers
say "B: The numbers are equals" if ($perl_version ~~ 5.20);
say "B: (@numbers) = max is $result" unless @numbers ~~ $result;

my @names_a = qw(mario luca gabriele michele maria lucia giovanni);
my @names_b = qw(mario luca gabriele michele maria lucia giovanni);

# Compare two arrays 
say "C: The arrays have the same elements" if (@names_a ~~ @names_b);
# Compare the array elements with a string
say "C: The array has $& element" if (@names_a ~~ /lucia/);


# Compare two hash
say "D: The hashes have the same pair of key\/values" if (%club_a ~~ %club_b);
# Compare hash key with a string
say "D: The hash has $& key" if (%club_a ~~ /torino/);

