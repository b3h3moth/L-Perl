#!/usr/bin/env perl
use strict;
use warnings;
use v5.22.0;
use File::Slurp;

my @english_adjectives = read_file('english_adjectives.txt');

my @sorted = map { $_->[0] } 
             sort { $a->[1] <=> $b->[1] } 
             map { [ $_ , length $_ ] } @english_adjectives;

print @sorted;
