#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Getopd::Std;
use File::HomeDir;

# Display directory size

my $path = File::HomeDir->my_home();

getopt('d');

if ($opt_d eq '') {
    usage();
}

open(DIR, " du -sk $opt_d\/\* |") or die "Cannot open dir: $!";

while (<DIR>) {
    chomp;
    
