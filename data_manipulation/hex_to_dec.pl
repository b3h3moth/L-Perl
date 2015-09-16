#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;

# Convert hex numbers into decimal

for (my $i = 0; $i < @ARGV; $i++) {
    my $val = hex($ARGV[$i]);
    printf("0x%x\t= %d\n", $val, $val);
}
