#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use File::Find 'find';

# Print out the names of all the files with names longer than 25 characters,
# followed by the name of the largest file found. Job done.

die "Usage: $0 <directory>\n" if (@ARGV != 1);

my $max_str;
my $max_len = 0;
my $dir = $ARGV[0];

find(\&wanted, $dir);

say "Max: $max_str";

sub wanted {
    return unless -f $_;

    if (length($_) > $max_len) {
        $max_str = $File::Find::name;
        $max_len = length($_);
    }

    if (length($File::Find::name) > 25) {
        say $File::Find::name; 
    }
}
