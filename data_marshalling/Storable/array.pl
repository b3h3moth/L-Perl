#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;
use Storable qw(freeze store_fd store nstore retrieve thaw);

# File which will store data
my $filename = 'array.txt';
my $filename_binary = 'bin_array.txt';

my @it_colors = qw(verde bianco rosso);
my @en_colors = qw(green white red);

push @en_colors, \@it_colors;
push @it_colors, \@en_colors;

# Serializing to memory
my $data = freeze [\@it_colors, \@en_colors];
# Reconstitute the data structure
my $array_clone = thaw($data);

say "----- data (clone)";
# Print out data on the stdout (clone)
store_fd(\$array_clone, \*STDOUT);
say "\n----- data (original hash)";
# Print out data on the stdout (original)
store_fd(\$data, \*STDOUT);

 # Store data into a file
store(\$data, $filename);

# Store binary representation into a file (n stands for network order)
nstore(\$data, $filename_binary);

# Reconstitute the data structure
my $array_ref = retrieve($filename);

say "\n----- data (retrieve)";
# Print out data on the stdout (retrieve)
store_fd(\$array_ref, \*STDOUT);
