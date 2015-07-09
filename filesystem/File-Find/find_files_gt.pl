#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use File::Find 'find';

# Print out the names of all the files with names longer than 20 characters,
# followed by the name of the largest file found. Job done.

die "Usage: $0 <directory>\n" if (@ARGV != 1);

my $max_str;
my $dir = $ARGV[0];

find(\&wanted, $dir);

say "Max: $max_str";

sub wanted {
    return unless -f $_;

    if (length($_) > 0) {
        $max_str = $File::Find::name;
        my $max_len = length($_);
        say $max_len;
    }

    if (length($File::Find::name) > 20) {
        say $File::Find::name; 
    }
}
