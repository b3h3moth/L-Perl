#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

use lib 'lib';
use Data::Conversion qw(byte_to_bit kbyte_to_byte mbyte_to_kbyte);

my @numbers = qw(1 2 4 6 8 10 100);

foreach my $num (@numbers) {
    say 'There are '.byte_to_bit($num).'bit in '.$num.'byte';
}

foreach my $num (@numbers) {
    say 'There are '.kbyte_to_byte($num).'byte in '.$num.'Kb';
}

foreach my $num (@numbers) {
    say 'There are '.mbyte_to_kbyte($num).'Kb in '.$num.'Mb';
}
