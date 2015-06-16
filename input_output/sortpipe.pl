#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my $file = '/home/behemoth/.profile';

open(FH, '-|', "perl sort.pl $file") or die "Cannot open $file: $!\n";
