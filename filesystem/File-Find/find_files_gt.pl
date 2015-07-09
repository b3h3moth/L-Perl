#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use File::Find 'find';

die "Usage: $0 <directory>\n" if (@ARGV != 1);

my $max_str;
my $max_len = 1;
my $dir = $ARGV[0];

find(\&wanted, $dir);

say "max: $max_str";


sub wanted {
    return unless -f $_;

    if (length($_) gt $max_len) {
        $max_str = $File::Find::name;
        $max_len = length($_);
    }

    if (length($File::Find::name) > 10) {
        say $File::Find::name; 
    }
}
