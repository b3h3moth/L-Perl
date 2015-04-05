#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Test::More;

# By default the + and * quantifiers are greedy, they try to match as much of
# the input string as possible. This is dangerous.
#
# Greedy quantifiers start by matching everything at first: sometimes greed is
# not good. At times, we would like quantifiers to match a minimal piece of
# string, rather than a maximal piece.
#
# For this purpose, Larry Wall created the minimal match or non-greedy
# quantifiers ??, *?, +?, and {}?.
#
# These are the usual quantifiers with a ? appended to them.
#
# They have the following meanings:
# a??     means: match 'a' 0 or 1 times. Try 0 first, then 1;
# a*?     means: match 'a' 0 or more times, any number of times, but as few
#                times as possible;
# a+?     means: match 'a' 1 or more times, at least once, but as few times as
#                possible;
# a{n,m}? means: match at least n times, not more than m times, as few times as
#                possible
# a{n,}?  means: match at least n times, but as few times as possible;
# a{n}?   means: match exactly n times.  Because we match exactly n times,
#                a{n}? is equivalent to a{n} and is just there for notational
#                consistency.

my $str = 'The <B>Perl</B> language was written <B>by Larry Wall</B>';
my $new_str = $str;

# there is a problem with greedy quantifiers
say "$str" if ($str =~ s#<B>(.*)</B>#$1#g);

# now is ok
say "$new_str" if ($new_str =~ s#<B>(.*?)</B>#$1#g);


