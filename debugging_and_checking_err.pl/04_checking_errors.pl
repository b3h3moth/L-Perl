#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

die "Usage: $0 <unix cmd>\n" if (@ARGV != 1);

my $command = shift(@ARGV);
#next line is the same thing
#my $command = shift(@ARGV);

my $path = qx/which $command/;
chomp($path);

#$? special variable stores the exit status from any program you're running
#$! special variable stores the current valure of the C errno variable
if ($? < 0) {
    print "Failed: (exit status: $!)\n";
} else {
    print "Command ok\n";
}

