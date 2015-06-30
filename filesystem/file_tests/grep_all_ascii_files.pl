#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# Glob all ASCII files in the current directory and save them into an array
my $dir_name = '.';
my @textfiles = grep { -T } glob "$dir_name/*";
say join "\n", @textfiles;
