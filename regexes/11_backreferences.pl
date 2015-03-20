#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;


my $str = "regular expression";
my $year = "1233456779";

#find two identical characters 'aa,'bb','cc' etc...
say "A: $1" if ($str =~ /(\w)\g1+/);

#find two identical digits '11','22','33' etc...
say "B: $1" if ($year =~ /(\d)\g1+/);
