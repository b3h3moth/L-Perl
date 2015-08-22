#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;
use File::Slurp;
use Cwd qw(getcwd abs_path);

# Get current directory
my $current_dir = getcwd();
say $current_dir;

# Get absolute path of the file
my $absolute_path = abs_path('.');
say $absolute_path;
