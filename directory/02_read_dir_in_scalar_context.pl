#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# Directory to read:
my $dir = '/boot';

# Open directory:
opendir(my $dh, $dir) or die "Could not open $dir for reading: $!\n";

# Read from $dh 'directory handle' into a scalar variable $content:
while (my $content = readdir $dh) {
    say $content;
}

# Close directory handle:
closedir($dh);
