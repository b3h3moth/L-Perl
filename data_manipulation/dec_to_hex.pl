#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;

# Convert decimal numbers into hex

for (my $i = 0; $i < @ARGV; $i++) {
    printf("%d\t= 0x%x\n", $ARGV[$i], $ARGV[$i]);
}
