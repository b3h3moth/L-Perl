#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use PDF::API2;

# Create a new pdf object
my $pdf = PDF::API2->new();

# Add a blank page
my $page = $pdf->page();

# Set the page size. Generally is simply A4, Letter, etc...
$page->mediabox(400,200);

# Add font
my $font = $pdf->corefont('Verdana');

# Add text to the page
my $text = $page->text();
$text->font($font, 18);
$text->translate(20,180);
$text->text("How to create PDF files with Perl");

# Save file
$pdf->saveas('empty.pdf');
