#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use File::Find;
use Digest::MD5;

# Find duplicate files

sub find_duplicate_files(@) {
    # Directory to search:
    my @dir_list = @_;

    

