#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use PDF::API2;

# Create a new pdf object
my $pdf = PDF::API2->new();

# Add a blank page
$pdf->page();

# Save file
$pdf->saveas('empty.pdf');
