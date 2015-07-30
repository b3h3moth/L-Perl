#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;
use Storable qw(freeze store_fd store nstore);

# File which will store data
my $filename = 'array.txt';
my $filename_binary = 'bin_array.txt';

my @it_colors = qw(verde bianco rosso);
my @en_colors = qw(green white red);

push @en_colors, \@it_colors;
push @it_colors, \@en_colors;

# Serializing to memory
my $data = freeze [\@it_colors, \@en_colors];

# Print out data on the stdout
store_fd(\$data, \*STDOUT);

 # Store data into a file
store(\$data, $filename);

# Store binary representation into a file
nstore(\$data, $filename_binary);
