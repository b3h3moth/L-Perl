#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my $filename = '/home/behemoth/.profile';
die "$filename doesn't exist\n" if (! -e $filename);

my($dev, $ino, $mode, $nlink, $uid, $gid, $rdev,
   $size, $atime, $mtime, $ctime, $blksize, $blocks) = stat($filename);
