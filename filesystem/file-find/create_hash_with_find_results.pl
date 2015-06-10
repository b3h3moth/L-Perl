#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Data::Dumper;
use File::Find;

# How to create an hash whose key is the file size and whose value is an array
# containing their filenames.

my %hash;

my $dir = '/var/www';

# Find all hash inside $dir directory and push into hash, whose key 
find( sub {
        -f &&
        push @{$hash{(stat(_))[7]}}, $File::Find::name
    }, $dir
);

say Dumper \%hash;
