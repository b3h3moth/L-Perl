#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use File::HomeDir;

# Find all config files (beginning with a period), put them into an array and
# finally print out them.

# Find files inside this directory
my $dir = shift // File::HomeDir->my_home();

opendir(DH, $dir) or die "Can't open $dir: $!\n";

my @config_files = ();

while(my $file = readdir DH) {
    # skip all directories
    if ($file eq '.' or $file eq '..' or -d "$dir/$file") {
        next;
    }

    # skip if file is a directory
    # next if (-d "$dir/$file");

    # Push each config file (beginning with a period) in the array
    if ("$file" =~ /^\./) {
        push @config_files, "$dir/$file";
    }

}

closedir(DH);

# Print out each file
foreach my $filename (@config_files) {
    say $filename;
}
