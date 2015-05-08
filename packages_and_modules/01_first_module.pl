#!/usr/bin/env perl
use warnings;
use strict;
use First; # module name

die ("Usage: $0 <string>\n") if (@ARGV != 1);

# routine from module is called (prepend the package name)
print First::reverse_string($ARGV[0]);
