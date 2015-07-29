#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Data::Dumper;
use File::Find;
use Digest::MD5;

# How to find duplicate files, in this case print out the checksum and 
# the filename(s).

die "Usage: $0 <top directory>\n" if (@ARGV != 1);

my %hash;

# Which top directory will be used to find files:
my @dir_list = (@ARGV);

find( sub {
        push @{$hash{(stat(_))[7]}}, $File::Find::name if -f;
    }, @dir_list
);

# Check if the hash of arrays (%hash) has one element at least:
foreach my $size (keys %hash) {
    if ( $#{$hash{$size}} < 1 ) {
        next;
    }

    my %md5;

    # Open each file and calculate its MD5 checksum, then add checksum and 
    # filename into hash named %md5:
    foreach my $cur_file (@{$hash{$size}}) {
        open(FILE, $cur_file) or next;

        # It is useful for binary files (pictures, executables, etc.)
        binmode(FILE);

        # Add the elements into hash:
        #   key: md5 checksum
        # value: filenames
        push @{$md5{Digest::MD5->new->addfile(*FILE)->hexdigest()}}, $cur_file;

        close(FILE);
    }

    # Print out checksum:filename
    # foreach my $msize (keys %md5) {
    #    print "$msize:";
    #
    #    foreach my $mfile (@{$md5{$msize}}) {
    #        print $mfile;
    #    }
    #    print "\n";
    # }

    # Check if two or more files have the same checksum:
    foreach my $curfile (keys %md5) {
        if ($#{$md5{$curfile}} >= 1) {
            print "[MD5 - $curfile] Files are:\n";
            foreach my $file (@{$md5{$curfile}}) {
                print "$file\n";
            }
            print "\n";
        }
    }
}
