#!/usr/bin/env perl
use warnings;
use strict;
use File::Path;

# File::Path
# This module provide a convenient way to create directories of arbitrary depth
# and to delete an entire directory subtree from the filesystem.

# mkpath()
# The mkpath() function provide the legacy interface of make_path() with a
# different interpretation of the arguments passed.
die "Err.\n" if !mkpath("dir1", 1, 0644);
