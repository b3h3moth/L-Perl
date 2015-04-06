#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# Backreferences are simply matching variables that can be used inside a regexp.
#
# Grouped patterns are stored in the special variables $1, $2, etc., these
# variables can be used outside of the regex. However, you can also refer to
# any matches from grouped patterns inside a regex by using something called
# backreferences.

my $str = "perl regular expression expression regexp regex RegEX RE";
my $year = "1233456779";

#find two identical characters 'aa,'bb','cc' etc...
say "A: matches $&" if ($str =~ /(\w+)\g1/);

#find two identical words
say "B: matches $&" if ($str =~ /(\w+) \g1/);
#
#find two identical digits '11','22','33' etc...
say "C: matches $&" if ($year =~ /(\d+)\g1/);

#find words inside ',"
my $text = "\'take\' a walk on the \"wild\" side";
say "D: matches $&" if($text =~ /(['"]).*\1/);

#$1,$2,$3 outside a regex
#g1,g2,g3 inside a regex
