#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use File::HomeDir;

# Find each file in Home directory, print only file larger than 100 KB and who
# it has been accessed in the last 30 days.

my $dir = shift // File::HomeDir->my_home();

opendir(DIR, $dir) or die "Can't open $dir: $!\n";

my @result = ();

while(my $file = readdir DIR) {
    if ($file eq '.' or $file eq '..' or -d "$dir/$file") {
        next;
    }

    # Print file:
    # larger than 102400 bytes (100KB)
    # it has been accessed in the last 30 days
    if (-s "$dir/$file" > 102400 and -A "$dir/$file" < 30) {
        push @result, "$dir/$file";
    }
}

closedir(DIR);
