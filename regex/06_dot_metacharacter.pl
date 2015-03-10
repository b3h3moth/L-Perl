#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my $puppy = "dog";
my $dog = "sid";
my $pass = "3s7";

#'.' dot metacharacter stands for match any single character

say "I love my $puppy" if ($puppy =~ m/d.g/);
say "his name is $dog" if ($dog =~ m/^...$/); # exactly 3 characters
say "My pass is $pass" if ($pass =~ m/[0-9].[0-9]/);
