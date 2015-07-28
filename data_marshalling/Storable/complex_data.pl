#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;
use Storable qw(freeze store_fd store);

my @it_colors = qw(verde bianco rosso);
my @en_colors = qw(green white red);

push @en_colors, \@it_colors;
push @it_colors, \@en_colors;

# Serializing to memory
my $data = freeze [\@it_colors, \@en_colors];
# say $data;

my %rgb_table_color = (
    255 => 'white',
    0   => 'black',
    125 => 'gray'
);

my $color_ref = 'rgb_table.txt';

# save into file
store(\%rgb_table_color, $color_ref);
# print out on stdout
store_fd(\%rgb_table_color, \*STDOUT);
