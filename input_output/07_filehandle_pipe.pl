#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# The open() function can be used for more than just plain files; anything that
# can read from stdin or write to stdout can talk directly to Perl via pipe.

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
