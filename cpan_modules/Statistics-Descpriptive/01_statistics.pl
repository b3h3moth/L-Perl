#!/usr/bin/env perl
# stats.pl
use strict; 
use warnings;
use Statistics::Descriptive;

my $stat = new Statistics::Descriptive::Full;
$stat->add_data(1, 2, 4, 8);
print $stat->mean, "\n";
print $stat->median, "\n";
print $stat->harmonic_mean, "\n";

