#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# directory to read:
my $dir = shift // '.';

# open directory:
opendir(DH, $dir) or die "Couldn't open $dir for reading: $!";

# Empty list:
my @files = ();

while(my $file = readdir DH){

    # find only perl, C, C++, C header and perl modules
    next unless ($file =~ /\.(pl|c|h|cpp|pm)$/i);
    
    # 
    my $filename = "$dir/$file";
    push(@files, $filename) if -T $filename;
}

say @files;
