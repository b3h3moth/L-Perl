#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;
use Storable qw(freeze store_fd store);

# File which will store data
my $filename = 'rgb_table.txt';

my @it_colors = qw(verde bianco rosso);
my @en_colors = qw(green white red);

push @en_colors, \@it_colors;
push @it_colors, \@en_colors;

# Serializing to memory
my $data = freeze [\@it_colors, \@en_colors];

# Print out the Data on the stdout
store_fd(\$data, \*STDOUT);

# Save the data into a file
store(\$data, $filename);

my %rgb_table_color = (
    255 => 'white',
    0   => 'black',
    125 => 'gray'
);

# Save the data into a file
store(\%rgb_table_color, $filename);

# Print out the Data on the stdout
store_fd(\%rgb_table_color, \*STDOUT);

