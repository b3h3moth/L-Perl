#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Data::Dumper;
use File::Find;

# How to create an hash whose key is the file size and whose value is an array
# containing their filenames.

die "Usage: $0 <directory>\n" if (@ARGV < 1);

my %hash;

#my $dir = '/var/www';
my @dir = (@ARGV);

# Find all files inside $dir and push each file into hash:
# hash keys = file size;
# hash values = filenames.
find( \&create_hash, @dir );

sub create_hash {
    push @{$hash{(stat(_))[7]}}, $File::Find::name if -f;
}

while (my ($filesize, $filename) = each %hash) {
    say "$filesize:\t@{$filename}";
}
