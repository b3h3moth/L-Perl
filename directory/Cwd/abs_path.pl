#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Cwd;

die "Usage: $0 <filename>\n", if (@ARGV != 1);
chomp(my $file = $ARGV[0]);

my $cur_working_dir = cwd();

use Cwd 'abs_path';
my $cwd_file = abs_path($file);

say "$cur_working_dir";
say "$cwd_file";
