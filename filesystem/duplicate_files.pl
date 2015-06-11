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
        #print "$msize:";

        foreach my $mfile (@{$md5{$msize}}) {
            #print $mfile;
        }
        #print "\n";
    }

    my @result = ();

    # check if two or more files have the same checksum
    foreach my $curfile (keys %md5) {
        if ($#{$md5{$curfile}} >= 1) {
            push(@result, [@{$md5{$curfile}}]);
            print "$curfile: [@{$md5{$curfile}}]\n";
        }
    }
}
