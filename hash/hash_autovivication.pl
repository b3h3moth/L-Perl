#!/usr/bin/env perl
use warnings;
use strict;
use Data::Dumper;

# A small test to verify auovivification with hashes.

my %kernel;
$kernel{source}{destination} = 'i386';
print Dumper \%kernel;
