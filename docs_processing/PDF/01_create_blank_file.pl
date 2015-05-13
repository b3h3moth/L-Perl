#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use PDF::API2;

my $pdf = PDF::API2->new();
$pdf->page();
$pdf->saveas('empty.pdf');
