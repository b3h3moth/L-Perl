#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my $file = "$$.txt";

# The filename is interpreted as a command that pipes output.
open(LISTDIR, 'ls -l |') or die "Couldn't get pipes output: $!\n";
open(FILE, '>', $file) or die "Can't open $file: $!\n";

while (<LISTDIR>) {
    print FILE $_;
}

close(LISTDIR);
close(FILE);

say "FILE: $file";
