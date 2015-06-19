#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Cwd;
use Data::Dumper;
use Cwd 'abs_path';
use File::Basename;

# The program starts with the requested directory to scan. When the scan is
# complete it returns to the directory from which it was called.

my %hash = ();

sub scan_directory {
    my $dir_to_scan = shift // '.';

    # Save the starting point:
    my $current_dir = cwd();

    # Enter into the directory to scan and open it:
    chdir $dir_to_scan or die "Cannot enter into $dir_to_scan: $!\n";
    opendir(my $DIR, '.') or die "Cannot open $dir_to_scan: $!\n";

    # Save each filename within the directory, than close dirhandle:
    my @filenames = readdir($DIR) or die "Cannot read $dir_to_scan: $!\n";
    closedir($DIR);

    foreach my $file (@filenames) {
        # Skip current '.' directory, 
        # parent '..' directory 
        # and hidden files '.*':
        next if ($file eq '.' or $file eq '..' or $file =~ /^\./);

        if (-d $file) {
            push @{$hash{abs_path($file)}}, undef;
            
            # Invoke scan_directory() again for every directory:
            scan_directory($file);
            #next;
        }

        foreach my $path (keys %hash) {
            if ($path eq dirname(abs_path($file)) ) {
                push @{$hash{$path}}, $file;
            }
        }
    }
    chdir $current_dir or die "Cannot change to $current_dir: $!\n";
}

scan_directory('..');

print Dumper \%hash;
