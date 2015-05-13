#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use File::Find 'find';

# find(\&wanted,  @directories);
# 
# find() does a depth-first search over the given @directories in the order 
# they are given. For each file or directory found, it calls the &wanted 
# subroutine.
# 
# For each directory found, it will chdir() into that directory and continue 
# the search, invoking the &wanted function on each file or subdirectory in the
# directory (just like ls -R recursive option).
#
# The wanted() function does whatever verifications you want on each file and 
# directory. When wanted() is called:
# - $_ is set to the current filename;
# - $File::find:dir is set to the currend directory;
# - $File::find:name is set to current filename "$File::find::dir/$_";
# - run chdir() for each directory found.

my $dir = '/etc';

opendir(my $dh, $dir) or die "Could not open $dir for reading: $!\n";

find(\&print_dir, $dir);

# Alternative syntax:
#   Find::Find::find(\&print_dir, $dir);
#   find(sub {say if -d}, $dir);

sub print_dir {
    # Print only directory whose names begin with vowels
    if ( -d ) {
        print "$File::Find::name\n" if /^[aeiou]/;
        # Or: 
        # print "$File::Find::dir/$_\n" if /^[aeiou]/;
    }
}

closedir($dh);
