#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;
use File::Path;

# File::Path
# This module provide a convenient way to create directories of arbitrary depth
# and to delete an entire directory subtree from the filesystem.

# rmtree($dir, ...)
# It deletes the given directories and any files and subdirectories they might
# contain, much like the Unix command 'rm -r', so it's dangerous.
