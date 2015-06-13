#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use File::HomeDir;

# Find files inside this directory
my $dir = shift // File::HomeDir->my_home();
#my $dir = '/home/behemoth';

opendir(DH, $dir);

while(my $file = readdir DH) {
    say $file;
}

close(DH);
