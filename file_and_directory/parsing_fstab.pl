#!/usr/bin/env perl
use warnings;
use strict;
use diagnostics;

# file to pars
my $filename = '/etc/fstab';

open(my $fh, '<', $filename)
    or die "Cannot open `$filename' for writing: $!";

# get UUID, mount point and file system
my $uuid        = qr/^UUID=\w{8}-\w{4}-\w{4}-\w{4}-\w{12}/;
my $mount_point = qr/\/\w{1,4}/;
my $fs          = qr/\w{4}/;

while ( my $line = <$fh> ) {
    next if $line =~ /^#/; # skip comments

    print "$1 $2 $3\n" if ($line =~ /($uuid)\s+($mount_point)\s+($fs)/);
}

close($fh)
    or die "Could not close '$filename': $!";
