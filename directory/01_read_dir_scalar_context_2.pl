#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# Directory I would like to read:
my $dir = '/boot';

# Open directory with opendir():
opendir(my $dh, $dir) or die "Could not open $dir for reading: $!\n";

# Once directory is opened I can use readdir() to read the content:
while (readdir $dh) {
    say $_;
}

# Close directory handle:
closedir($dh);
