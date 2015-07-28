#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;
use Storable 'freeze';

my @it_colors = qw(verde bianco rosso);
my @en_colors = qw(green white red);

push @en_colors, \@it_colors;
push @it_colors, \@en_colors;

# Serializing to memory
my $data = freeze [\@it_colors, \@en_colors];

say $data;
