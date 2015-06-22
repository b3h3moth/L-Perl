#!/usr/bin/env perl
use strict;
use warnings;

die "Usage: $0 <firstname> <lastname>" if (@ARGV != 2);

chomp(my $firstname = $ARGV[0]);
chomp(my $lastname = $ARGV[1]);
