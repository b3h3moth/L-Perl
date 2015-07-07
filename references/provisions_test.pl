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
say 'Name is: '.${$all_with_names[2]}[0];
say 'Name is: '.${$$person[2]}[0];

# dereference gillian first item
say 'Gillian item 0: '.${${$all_with_names[2]}[1]}[0];
say 'Gillian item 0: '.${${$$person[2]}[1]}[0];

# It's really noisy syntax. We can write NAME->[$x] instead.
# reference for skipper
say 'Name is: '.$all_with_names[0]->[0];
say 'Name is: '.$$person[0]->[0];

# dereference skipper first item
say 'Skipper item 2: '.$all_with_names[0]->[1]->[2];
say 'Skipper item 2: '.$$person[0]->[1]->[2];

# One more rule to improve syntax and source code clarity: drop the arrow
# because multiple subscripts imply a dereference already.
# reference for Prof:
say 'Name is: '.$all_with_names[1][0];
say 'Name is: '.$$person[1][0];

say 'Prof item 3: '.$all_with_names[1][1][2];
say 'Prof item 3: '.$$person[1][1][2];

say 'Skipper reference address memory: ', $all_with_names[0];
say '  Prof. reference address memory: ', $all_with_names[1];
say 'Gillian reference address memory: ', $all_with_names[2];
