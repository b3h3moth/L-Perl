#!/usr/bin/env perl
#use Modern::Perl;
use warnings;
use strict;

# substr(expr, offset, length)
my $quote = "Probabilmente fra qualche ora cadra' parecchia neve!";
print substr($quote,0,13), "\n";
print substr($quote,14,3), "\n";
print substr($quote,18,7), "\n";
print substr($quote,26,3), "\n";
print substr($quote,30,6), "\n";
print substr($quote,37,9), "\n";
print substr($quote,47,5), "\n";

#string replacement
substr($quote,47,5) = "Figa!";
print $quote, "\n";
