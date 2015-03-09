#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my $password = "9n0A";
my $PIN = "3d47";
my $string = "aaaaaBBBBBcccccDDDDDeeeee";

#using dash to specify range of numbers or characters
say "$password" if ($password =~ m/[0-9][a-z][0-9][A-Z]/);
#both work fine. Final 'i' stands for ignore case
say "(with ignore case) $password" if ($password =~ m/[0-9][a-z][0-9][a-z]/i);

say "It's not a valid PIN" if ($PIN =~ m/[^0-9]/);

say "before: $string";
$string =~ tr/[a-z]/[A-Z]/;
say " after: $string";
