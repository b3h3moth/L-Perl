#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Data::Dumper;
use File::Find;

# How to create an hash whose keys is the file size and whose values are 
# their names.

my %files;

my $dir = '~';

# Find all files inside 
find( sub {
        push @{$files{(stat(_))[7]}}, $File::Find::name
    }, $dir
);

say Dumper \%files;
