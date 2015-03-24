#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

die "Usage: $0 <unix cmd>\n" if (@ARGV != 1);

my $command = shift(@ARGV);
#the same thing
#my $command = shift(@ARGV);

my $path = qx/which $command/;
chomp($path);

#$? special variable stores the exit status from any program you're running
if ($?) {
    print STDERR "Err.running: $command - (exit status: $?)\n";
} else {
    print STDOUT "$command: $path - (exit status: $?)\n";
}

