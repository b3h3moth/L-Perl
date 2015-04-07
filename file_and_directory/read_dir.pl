#!/usr/bin/env perl
use warnings;
use strict;

my $directory = '.';

opendir (my $dh, $directory)
  or die "Cannot open `$directory' for reading: $!";

# get all entries not starting with a dot
#my @entries = grep { !/^\./ } readdir($dh);
foreach my $file (readdir $dh) {
    print "$file\n";
}

closedir $dh
  or die "Cannot close `$directory': $!";
