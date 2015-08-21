#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;
use File::Find;

my @starting_dir = '.';

find ( 
sub { 
        print "$File::Find::name\n";
    }, @starting_dir, 
);

