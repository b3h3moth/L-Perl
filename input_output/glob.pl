#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# glob EXPR
#
# In list context, returns a list of filename expansions on the value of EXPR.
# In scalar context, glob iterates through such filename expansions, returning
# undef when the list is exhausted. If EXPR is omitted, $_ is used. 
# 
# Globbing: patterns to match files and directories.

# How to get next 'perl' file in alphabetical order, in scalar context
my $next_file = glob('*.pl');
say "file: $next_file";

# How to get list of 'perl' files, list context;
my @all_filenames = glob('*.pl');
foreach (@all_filenames) {
    say "perl: $_";
}

