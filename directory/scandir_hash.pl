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
            # Create hash keys with the directory absolute path:
            push @{$hash{abs_path($file)}};
            
            # Invoke scan_directory() again for every directory:
            scan_directory($file);
            next;
        }

        # Create hash values with all filenames within directory:
        # /dir => [file1, file2, ... fileN].
        # If the directory absolute path is equals to the filename absolute
        # path, than add each filename into hash value:
        for (sort keys %hash) {
            if ($_ eq dirname(abs_path($file)) ) {
                push @{$hash{$_}}, $file;
                next;
            }
        }
    }

    # Back to current directory:
    chdir $current_dir or die "Cannot change to $current_dir: $!\n";
}

die "Usage: $0 <directory to scan>\n" if (@ARGV != 1);
chomp(my $dir = $ARGV[0]);

scan_directory($dir);

print Dumper %hash;
