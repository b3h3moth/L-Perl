#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my $filename = '/etc/passwd';

open(INPUT, "<", "$filename") or die "Cannot open $filename: $!";

while (<INPUT>) {
    chomp;
    my ($login, $passwd, $uid, $gid, $gcos, $home, $shell) = split(/:/);
    say "$login $passwd $uid $gid $gcos $home $shell";
}
