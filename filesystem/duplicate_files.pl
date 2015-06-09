#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use File::Find;
use Digest::MD5;

# Find duplicate files

sub find_duplicate_files(@) {
    # Directory to search:
    my @dir_list = @_;

    if ($#dirlist < 0) {
        return (undef);
    }

    my %files;

    # Find files with the same size:
    find ( sub {
            -f && push @{$files{(stat(_))[7]}}, File::Find::name()
        }, @dir_list
    );

    # Resulting list:
    my @result = ();

    # check md5 for every file:

}

my @dups = find_duplicate_files(@ARGV);
