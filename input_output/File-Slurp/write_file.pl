#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use File::Slurp;

my $cpu_info = '/proc/cpuinfo';
my $backup_cpu_info = 'cpuinfo.txt';

my $text_file = read_file($cpu_info);

write_file($backup_cpu_info, $text_file);
