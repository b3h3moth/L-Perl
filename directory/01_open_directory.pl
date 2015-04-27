#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# Modern operating systems organize files into directories, 'directory handle' 
# is the way to get a list of (file)names from a directory. 
#
# opendir DIRHANDLE, EXPR
# DIRHANDLE hold the directory handle, EXPR is relative or absolute path to the
# directory.
#
# Directory handle works like a filehandle:
# - open with opendir() instead of open();
# - read from it with readdir() instead of readline(); 
# - close it with closedir() instead of close().


