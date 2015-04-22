#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Cairo;

# Scope of the program is to create Italian Flag.
my $italian_flag = 'italia.png';

# Cairo provides Perl bindings for the 2D vector graphics library cairo.  
# It supports multiple output targets, including PNG, PDF and SVG.  
# Cairo produces identical output on all those targets.

# Create a drawing surface, it's 100x100
my $surface = Cairo::ImageSurface->create('argb32', 100, 100);

# Create a drawing context. Cairo::Context is the main object.
my $cr = Cairo::Context->create($surface);

# Create a rectangle (x, y, width, height)
# green strip
$cr->rectangle (0, 0, 33, 100);
# Set the colour of the firt stripe (Red, Green, Blue)
$cr->set_source_rgb (0, 1, 0);
# Fill the rectangle
$cr->fill;

# white strip
$cr->rectangle (33, 0, 34, 100);
$cr->set_source_rgb (1, 1, 1);
$cr->fill;

# red strip
$cr->rectangle (67, 0, 33, 100);
$cr->set_source_rgb (1, 0, 0);
$cr->fill;

#$cr->show_page;

# Write the surface to the png file
$surface->write_to_png ($italian_flag);
