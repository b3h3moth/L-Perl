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
    # skip if arrayref < 1
    if ( $#{$hash{$size}} < 1 ) {
        next;
    }

    my %md5;

    #print "$size: ";

    foreach my $cur_file (@{$hash{$size}}) {
        #print "$cur_file, ";

        open(FILE, $cur_file) or next;
        binmode(FILE);

        # Add elements into md5 hash:
        # key:  md5 checksum
        # value: filename
        push @{$md5{Digest::MD5->new->addfile(*FILE)->hexdigest()}}, $cur_file;
        close(FILE);


    }
    #print "\n";
   
   foreach my $msize (keys %md5) {
       print "$msize:";
       
       foreach my $mfile (@{$md5{$msize}}) {
           print $mfile;
       }
       print "\n";
   }

}
