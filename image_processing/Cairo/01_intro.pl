#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Cairo;

# Cairo provides Perl bindings for the 2D vector graphics library cairo.  
# It supports multiple output targets, including PNG, PDF and SVG.  
# Cairo produces identical output on all those targets.

# Scope of the program is to create Italian Flag.

# Create a drawing surface, it's 100x100
my $surface = Cairo::ImageSurface->create('argb32', 100, 100);

# Create a drawing context. Cairo::Context is the main object.
my $cr = Cairo::Context->create($surface);

# Create a rectangle (x, y, width, height)
$cr->rectangle (0, 0, 34, 100);

# Set the colours of the firt stripe (green)
$cr->set_source_rgb (10, 105, 25);
$cr->fill;

$cr->show_page;

$surface->write_to_png ('output.png');
