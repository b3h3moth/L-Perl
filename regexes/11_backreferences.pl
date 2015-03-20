#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

#backreferences are simply matching variables that can be used inside a regexp,
#they are strictly associated with matching variables $1, $2, $3, etc. (outside
#a regex), backreferences are g1, g2, g3, etc..

my $str = "perl regular expression expression regexp regex RegEX RE";
my $year = "1233456779";

#find two identical characters 'aa,'bb','cc' etc...
say "A: character is: $1" if ($str =~ /(\w+)\g1/);

#find two identical words
say "B: word is: $1" if ($str =~ /(\w+) \g1/);
#
#find two identical digits '11','22','33' etc...
say "C: digit is: $1" if ($year =~ /(\d+)\g1/);

#$1,$2,$3 outside a regex
#g1,g2,g3 inside a regex
