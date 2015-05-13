#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use File::Find 'find';

# find(\&wanted,  @directories);
# find() does a depth-first search over the given @directories in the order 
# they are given. For each file or directory found, it calls the &wanted 
# subroutine.
my $dir = '/etc';

opendir(my $dh, $dir) or die "Could not open $dir for reading: $!\n";

find(\&print_dir, $dir);

sub print_dir {
    say if -d;
}

closedir($dh);
