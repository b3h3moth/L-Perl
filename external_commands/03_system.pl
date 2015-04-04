#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

#system() executes the command specified but it doesn't capture the output.

die "Usage: $0 <unix command>\n" if (@ARGV != 1);

my $cmd = shift;

system($cmd) == 0 or die "sytem($cmd) failed: $?";
