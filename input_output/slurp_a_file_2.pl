#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# slurp all of a file's content into a variable

my $content; {
    local $/;
    open (FH, '<', '/proc/cpuinfo') or die "Cannot open file: $!";
    $content = <FH>;
    close (FH);
}

say $content;
