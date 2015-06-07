#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Chart::Clicker;

# How to create a graph with Chart::Clicker module.

# Create a new Chart::Clicker object:
my $object = Chart::Clicker->new(
   width => 600,
   height => 400,
   format => 'png'
);

# Add data to chart:
$object->add_data('Set 1', [5.8, 5.0, 4.9, 4.8, 4.5, 4.2]);
$object->add_data('Set 2', [0.7, 1.1, 1.7, 2.5, 3.0, 4.5]);

# Set title:
$object->title->text('Line Chart');
$object->title->padding->bottom(5);

# Save image:
$object->write_output('chartline.png');

exit;
