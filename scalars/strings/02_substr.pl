#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# substr(expr, offset, length)
my $quote = "This is the end my only friend, the end (The doors)";
print substr($quote,  0, 4), "\n";
print substr($quote,  5, 2), "\n";
print substr($quote,  8, 3), "\n";
print substr($quote, 12, 3), "\n";
print substr($quote, 16, 2), "\n";
print substr($quote, 19, 4), "\n";
print substr($quote, 24, 7), "\n";
print substr($quote, 32, 3), "\n";
print substr($quote, 36, 3), "\n";
print substr($quote, 40, 4), " ";
print substr($quote, 45, 6), "\n";

# string replacement, replace 'doors' wih 'Jim morrison, The doors"
substr($quote, 41, 23) = "Jim Morrison, The doors)";
say $quote;
