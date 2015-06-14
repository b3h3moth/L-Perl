#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use File::HomeDir;

# Find files in Home directory an print only files larger than 100 KB

my $dir = shift // File::HomeDir->my_home();

opendir(DIR, $dir) or die "Can't open $dir: $!\n";

my @result = ();

while(my $file = readdir DIR) {
    if ($file eq '.' or $file eq '..' or -d "$dir/$file") {
        next;
    }

    if (-s "$dir/$file" > 102400) {
        say $file;
    }
}

closedir(DIR);
