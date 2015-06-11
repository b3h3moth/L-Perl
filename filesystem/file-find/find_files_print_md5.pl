#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Data::Dumper;
use File::Find;
use Digest::MD5;

# How to create an hash whose keys is the file size and whose values are 
# their names.

my %hash;

my @dir_list = (@ARGV);

find( sub {
        push @{$hash{(stat(_))[7]}}, $File::Find::name if -f;
    }, @dir_list
);

foreach my $size (keys %hash) {
    if ( $#{$hash{$size}} < 1 ) {
        next;
    }

    my %md5;

    # 
    foreach my $current_file (@{$hash{$size}}) {
        open(FILE, $current_file) or next;
        binmode(FILE);
        # Add elements into hash:
        #   key: md5 checksum
        # value: filenames
        push @{$md5{Digest::MD5->new->hexdigest()}}, $current_file;

        close(FILE);
    }

    foreach my $msize (keys %md5) {
        print "$msize:";

        foreach my $mfile (@{$md5{$msize}}) {
            print $mfile;
        }
        print "\n";
    }
}
