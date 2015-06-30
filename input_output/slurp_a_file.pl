#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my $content = do {
    local $/;
    open (FH, '<', '/proc/cpuinfo') or die "Cannot open file: $!";
    <FH>;
}; # I'm closing an istrcution, ';' is necessary.

say $content;
