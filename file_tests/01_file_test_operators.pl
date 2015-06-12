#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# File test operator's list:
# -r File or directory is readable by this (effective) user or group;
# -w File or directory is writable by this (effective) user or group;
# -x File or directory is executable by this (effective) user or group;
# -o File or directory is owned by this (effective) user;
# -R File or directory is readable by this real user or group;
# -W File or directory is writable by this real user or group;
# -X File or directory is executable by this real user or group;
# -O File or directory is owned by this real user;
# -e File or directory name exists;
# -z File exists and has zero size (always false for directories);
# -s File or directory exists and has nonzero size (in bytes);
# -f Entry is a plain file.

my $filename = '/home/behemoth/.profile';

die "$filename exists\n" if -f $filename;
