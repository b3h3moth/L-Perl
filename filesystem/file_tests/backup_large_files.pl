#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use File::HomeDir;

# Find config files and put them into an array

# Find files inside this directory
my $dir = shift // File::HomeDir->my_home();

opendir(DH, $dir) or die "Can't open $dir: $!\n";

my @config_files = ();

while(my $file = readdir DH) {
    # skip current and parent directory
    if ($file eq '.' or $file eq '..') {
        next;
    }

    # skip if file is a directory
    next if (-d "$dir/$file");

    # Print only files that start with a period
    if ("$file" =~ /^\./) {
        push @config_files, "$dir/$file";
    }

}

close(DH);
