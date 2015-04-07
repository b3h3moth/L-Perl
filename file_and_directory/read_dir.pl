#!/usr/bin/env perl
use warnings;
use strict;

my $directory = '.';

opendir (my $dh, $directory)
  or die "Cannot open `$directory' for reading: $!";

foreach my $file (readdir $dh) {
    # get all entries not starting with a dot
    next if ($file =~ /^\.+/);

    print "$file\n";
}

closedir $dh
  or die "Cannot close `$directory': $!";
