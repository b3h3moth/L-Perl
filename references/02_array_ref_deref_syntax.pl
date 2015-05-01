#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my @skipper = qw(blue_shirt hat jacket preserver sunscreen);
my @skipper_with_name = ('Skipper'=> \@skipper);

my @prof = qw(sunscreen water_bottle slide_rule batteries radio);
my @prof_with_name = ('Prof'=> \@prof);

my @gillian = qw(red_shirt hat lucky_socks water_bottle);
my @gillian_with_name = ('Gillian'=> \@gillian);

my @all_with_names = (
    \@skipper_with_name,
    \@prof_with_name,
    \@gillian_with_name,
);

my $person = \@all_with_names;

# reference for gillian 
say 'Gref: '.${$all_with_names[2]}[1];
say 'Gref: '.${$$person[2]}[1];

# dereference gillian first item
say 'Gderef: '.${${$all_with_names[2]}[1]}[0];
say 'Gderef: '.${${$$person[2]}[1]}[0];

# It's really noisy syntax. We can write NAME->[$x] instead.
# reference for skipper
say 'Sref: '.$all_with_names[2]->[1];
say 'Sref: '.$$person[2]->[1];

# dereference skipper first item
say 'Sderef: '.$all_with_names[0]->[1]->[0];
say 'Sderef: '.$$person[0]->[1]->[0];

# One more rule to improve syntax and source code clarity: drop the arrow
# because multiple subscripts imply a dereference already.
# reference for Prof:
say 'Pderef: '.$all_with_names[1][1][0];
say 'Pderef: '.$$person[1][1][0];
