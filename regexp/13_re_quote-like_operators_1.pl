#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# The Regexp-like quote qr/STRING/ compiles the string as a regexp and
# transforms the result into a form that can be assigned to a variable.

my $pattern = qr/^\d{2}(\w|-)\d{6}/;

my $phone_number_home = '02-345678';
my $phone_number_work = '02 345678';

say "Good morning..." if $phone_number_home =~ /$pattern/;
say "I'm sleeping..." if $phone_number_work =~ /$pattern/;

my $str = "sunday bloody sunday by U2";
my $text = qr/sun+day/;

say "A: $str : $text : $&" if ($str =~ /$text/);

# regex contains a compiled regular expression
my $regex = qr/foo+tball?/;
my $sport = "fooooooooootball";

# matches, just like /foo+tball?/
say "B: $sport : $regex : $&" if ($sport =~ $regex);

# this is the same thing, alternate form
say "C: $sport : $regex : $&" if ($sport =~ /$regex/);

# still matches
say "D: $sport : $regex : $&" if ($sport =~ /(xyz)?$regex/);
