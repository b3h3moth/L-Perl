#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# Get the current universal timestamp as a string with gmtime()
my $now = gmtime();
say $now;
