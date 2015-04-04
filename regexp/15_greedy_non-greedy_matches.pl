#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Test::More;

# Regexp get more powerful through the use of regex quantifiers, they govern
# how often a regex component may appear in a matching string.
#
# The simplest quantifier is 'the zero or one quantifier', or ?:

my $text = qr/uni?x/;
my $os = 'unx';

like('unix', $text, "'unix' matches /uni?x/");
like('unx', $text, "'unx' matches /uni?x/");

done_testing();

# By default the + and * quantifiers are greedy, they try to match as much of
# the input string as possible. This is dangerous.
#
# How can you see, greedy quantifiers start by matching everything at first:

my $bsd = "My opinion is that OpenBSD is great";
my $pat = qr/[Oo]pen.*great/;

say "$&" if ($bsd =~ $pat);

# If you want it to match the minimum number of times possible, the '?'
# quantifier modifier turns a greedy-quantifier non-greedy:

my $pattern = qr/[Oo]pen.*?great/;
say "$&" if ($bsd =~ $pattern);
