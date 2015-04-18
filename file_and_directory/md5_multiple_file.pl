#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Digest::MD5; 

# How to calculate md5 hash of a multiple files

die("Usage: $0 <filename 1><filename 2>...<filename N>\n") if (@ARGV == 0);

my (@infile) = @ARGV;

for my $file (@infile) {
    open(FILE, '<', "$file") 
        or die("Can't open file \'$file\': $!\n");
    
    my $result = Digest::MD5->new->addfile(*FILE)->hexdigest;
    
    say $file."\t".$result;
    
    close(FILE);
}

# works well also with: 
# ./md5_multiple_file.pl *
