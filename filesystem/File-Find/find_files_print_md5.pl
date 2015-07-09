#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Data::Dumper;
use File::Find;
use Digest::MD5;

# How to create an hash whose keys is the file size and whose values are 
# their names.

die "Usage: $0 <directory>\n" if (@ARGV != 1);

my %hash;

my @dir_list = ($ARGV[0]);

find( sub {
        push @{$hash{(stat(_))[7]}}, $File::Find::name if -f;
    }, @dir_list
);

# Check if the hash of arrays (%hash) has two element at least.
foreach my $size (keys %hash) {
    if ( $#{$hash{$size}} < 0 ) {
        next;
    }

    my %md5;

    # Open each file and calculate its MD5 checksum, then add checksum and 
    # filename into hash %md5.
    foreach my $cur_file (@{$hash{$size}}) {
        open(FILE, $cur_file) or next;
        binmode(FILE);
        # Add elements into hash:
        #   key: md5 checksum
        # value: filenames
        push @{$md5{Digest::MD5->new->addfile(*FILE)->hexdigest()}}, $cur_file;

        close(FILE);
    }

    # print checksum:filename
    foreach my $msize (keys %md5) {
        print "$msize:";

        foreach my $mfile (@{$md5{$msize}}) {
            print $mfile;
        }
        print "\n";
    }
}
