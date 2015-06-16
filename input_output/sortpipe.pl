#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my $file = 'sort.pl';

open(FH, '-|', 'perl sort.pl sort.pl') or die "Cannot open $file: $!\n";

my $i = 1;
while (<FH>) {
    if ($i % 3 == 0) {
        print;
    }

    $i++;
}

close(FH)
