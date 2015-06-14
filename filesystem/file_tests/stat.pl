#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my $filename = '/home/behemoth/.profile';
die "$filename doesn't exist\n" if (! -e $filename);
