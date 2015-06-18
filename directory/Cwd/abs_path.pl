#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Cwd 'abs_path';

die "Usage: $0 <filename>\n", if (@ARGV != 1);
chomp(my $file = $ARGV[0]);

my $cwd = getcwd();
my $cwd_file = abs_path($file);

