#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# Directory to read given from command line argument:
die ("Usage: $0 <dirname>\n") if (@ARGV != 1);
my $dir = $ARGV[0];

# Open directory:
opendir(my $dh, $dir) or die "Could not open $dir for reading: $!\n";

# Read from $dh 'directory handle';
while (my $content = readdir $dh) {
    
    # read only perl files
    next unless ($content =~ /\.pl$/);
    
    say $content;
}

# Close directory handle:
closedir($dh);
