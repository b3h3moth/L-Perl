#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use File::Slurp;

my $cpu_info = '/proc/cpuinfo';
my $partitions = '/proc/partitions';

my $text_file = read_file($cpu_info);
my @lines_file = read_file($partitions);

say 'Reading (text) ', $cpu_info;
print $text_file;

say "\nReading (list) $partitions";
foreach (@lines_file) {
    print $_;
}
