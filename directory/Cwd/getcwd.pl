#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Cwd;

# This module provides functions for determining the pathname of the current
# working directory.

# Get pathname of current working directory
my $current_working_directory = getcwd();
say $current_working_directory;

# same thing
my $cwd = cwd();
say $cwd;
