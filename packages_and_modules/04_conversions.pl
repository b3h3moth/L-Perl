#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

use lib 'lib';
use Data::Conversion qw(bytes_to_bit kbytes_to_byte mbytes_to_kbytes);

my @numbers = qw(1 2 4 6 8 10 100);

foreach my $num (@numbers) {
    say 'There are '.bytes_to_bit($num).'bit in '.$num.'byte';
}

foreach my $num (@numbers) {
    say 'There are '.kbytes_to_byte($num).'byte in '.$num.'Kb';
}

foreach my $num (@numbers) {
    say 'There are '.mbytes_to_kbytes($num).'Kb in '.$num.'Mb';
}
