#!/usr/bin/env perl
use strict;
use warnings;
use v5.20.2;

die "Usage: $0 <firstname> <lastname>" if (@ARGV != 2);

chomp(my $firstname = $ARGV[0]);
chomp(my $lastname = $ARGV[1]);

say "Hi my name is $firstname $lastname";
