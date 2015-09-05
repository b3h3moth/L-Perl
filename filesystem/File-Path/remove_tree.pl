#!/usr/bin/env perl
use warnings;
use strict;
use File::Path qw(mkpath remove_tree);

# File::Path
# This module provide a convenient way to create directories of arbitrary depth
# and to delete an entire directory subtree from the filesystem.

my $dir = "new_dir";
mkpath($dir);

# remove_tree()
# The "remove_tree" function deletes the given directories and any files and 
# subdirectories they might contain. It's like the unix commands "rm -r".
die "Err.:$!\n" if !remove_tree($dir, 1, 1);

# Error
die "Err.:$!\n" if !remove_tree($dir, 1, 1);
