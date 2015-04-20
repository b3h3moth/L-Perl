#!/usr/bin/env perl
use warnings;
use strict;
use v5.10;

for (my $i = 0; $i <= 5; $i += 1)
{
    say $i;
}

for (say '     Init: ', my $x = 0;
     say "Iteration: $x" and $x < 5;
     say 'Increment: ' . $x++)
 {
     say "$x";
 }

my @unix = qw(OpenBSD FreeBSD NetBSD HPUX GNU/Linux Solaris);

for (my $x=0; $x<@unix; $x++) {
    say $unix[$x];
}
