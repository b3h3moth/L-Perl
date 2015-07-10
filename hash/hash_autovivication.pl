#!/usr/bin/env perl
use warnings;
use strict;
use Data::Dumper;


my %kernel;
$kernel{source}{destination} = 'i386';
print Dumper \%kernel;
