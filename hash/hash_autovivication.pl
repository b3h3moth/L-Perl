#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Data::Dumper;

my %kernel;
my ($source, $destination) = qw(3.2.0-4-powerpc /usr/src);
$kernel{$source}{$destination} = 'i386';
print Dumper \%kernel;
