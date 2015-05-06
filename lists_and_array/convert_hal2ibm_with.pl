#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# how to convert from HAL to IBM: 
my $hal = "HAL";
my @byte = unpack("C*", $hal);

foreach my $val (@byte) {
    $val++;
}

my $ibm = pack("C*", @byte);
say "$ibm";  
