#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;

open (FH, "<", "/etc/passwd") or die "Cannot open file\n";

while (<FH>) {
    chomp;
    my @item = split /:/;
    # slice
    my ($user, $shell) = ($item[0], $item[5]);
    print "%-20 %-20\n", $user, $shell;
}


close(FH);
