#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Cwd;

# The program starts with the requested directory to scan. When the scan is
# complete it returns to the directory from which it was called.

sub scan_directory {
    my $dir_to_scan = shift // '.';

    # Save the starting point:
    my $current_dir = cwd();

    # Enter into the directory to scan and open it:
    chdir $dir_to_scan or die "Cannot enter into $dir_to_scan: $!\n";
    open(my $DIR, '.') or die "Cannot open $dir_to_scan: $!\n";

    # Save each filename inside the directory:
    my @filenames = readdir($DIR) or die "Cannot read $dir_to_scan: $!\n";

    foreach my $file (@filenames) {
        # Skip current '.' and parent '..' directories:
        next if ($file eq '.' or $file eq '..');

        if (-d $file) {
            scan_directory($file);
            next;
        }
    }

    chdir $current_dir or die "Cannot change to $current_dir: $!\n";

}

