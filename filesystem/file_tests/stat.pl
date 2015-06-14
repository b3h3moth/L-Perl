#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my $filename = '/home/behemoth/.profile';
die "$filename doesn't exist\n" if (! -e $filename);

my($dev, $ino, $mode, $nlink, $uid, $gid, $rdev,
   $size, $atime, $mtime, $ctime, $blksize, $blocks) = stat($filename);

say "    dev: $dev";
say "    ino: $ino";
say "   mode: $mode";
say "  nlink: $nlink";
say "    uid: $uid";
say "    gid: $gid";
say "    dev: $rdev";
say "   size: $size";
say "  atime: $atime";
say "  mtime: $mtime";
say "  ctime: $ctime";
say "blksize: $blksize";
say " blocks: $blocks";
