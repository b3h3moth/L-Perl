#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use File::Find 'find';

my $dir = '/etc';

opendir(my $dh, $dir) or die "Could not open $dir for reading: $!\n";

find(\&print_dir, $dir);

sub print_dir {
    say if -d;
}

closedir($dh);
