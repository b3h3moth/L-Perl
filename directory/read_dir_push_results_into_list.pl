#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# directory to read:
my $dir = shift // '.';

# open directory:
opendir(DH, $dir) or die "Couldn't open $dir for reading: $!";

# empty list:
my @files = ();

while(my $file = readdir DH){

    # find perl, C, C++, C header and perl modules
    next unless ($file =~ /\.(pl|c|h|cpp|pm)$/i);
    
    # add directory name to each file
    my $filename = "$dir/$file";

    # push results into list, -T stands for only text 'ascii' files:
    push(@files, $filename) if (-T $filename);
}

say join "\n",@files;
