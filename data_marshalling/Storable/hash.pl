#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;
use Storable qw(freeze store_fd store nstore retrieve thaw); 

# File which will store data
my $filename = 'hash.txt';
my $filename_binary = 'bin_hash.txt';

my %rgb_table_color = (
    255 => 'white',
    0   => 'black',
    125 => 'gray'
);

# Serializing to memory
my $data = freeze(\%rgb_table_color);
# Reconstitute the data structure
my %hash_clone = %{thaw($data)};

# # Print out data on the stdout (clone)
store_fd(\%hash_clone, \*STDOUT);

# Store data into a file
store(\%rgb_table_color, $filename);

# Store binary representation into a file (n stands for network order)
nstore(\%rgb_table_color, $filename_binary);
