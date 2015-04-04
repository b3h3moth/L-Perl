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

# The + and * quantifiers are greedy: they try to match as much of the input
# string as possible.
