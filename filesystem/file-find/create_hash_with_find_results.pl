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

# Find all hash inside $dir directory and push into hash:
# hash keys = file size;
# hash values = filename.
find( \&create_hash, $dir );

sub create_hash {
    push @{$hash{(stat(_))[7]}}, $File::Find::name if -f;
}

say Dumper \%hash;
