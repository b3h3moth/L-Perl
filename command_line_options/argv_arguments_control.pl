#!/usr/bin/env perl
use strict;
use warnings;

die "Usage: $0 <firstname> <lastname>" if (@ARGV != 1);

my $firstname = $ARGV[0];
my $lastname = $ARGV[1];
