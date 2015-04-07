#!/usr/bin/env perl
use warnings;
use strict;
use diagnostics;

my $filename = '/etc/fstab';

open(my $fh, '<', $filename)
    or die "Cannot open `$filename' for writing: $!";

my $uuid        = qr/^UUID=\w{8}-\w{4}-\w{4}-\w{4}-\w{12}/;
my $mount_point = qr/\/\w{1,4}/;

while ( my $line = <$fh> ) {
    next if $line =~ /^#/; # skip comments

    #my ($name, $case_number, $description ) = split /\W/, $line;
    #print "$name ($case_number): $description\n";
    print "$1 $2\n" if ($line =~ /($uuid)\s($mount_point)/);
}

close($fh)
    or die "Could not close `$filename': $!";
