#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use LWP::Simple;
use Data::Dumper;

# Retrieving files from internet

my $remote_url = 'http://www.openbsd.org/57.html';
my $remote_file = get($remote_url) or die ("Unable to fetch file\n");

my @data = split("\r\n", $remote_file);

# process header
my $data_line = shift(@data);
my @header = split("\n", $data_line);

my @sample_data;

foreach (@data) {
    my @sample = split(",", $_);

    my %sample_hash;

    for (my $i=0; $i<scalar(@sample); $i++) {
        $sample_hash{$header[$i]} = $sample[$i];
    }

    push (@sample_data, \%sample_hash);
}

print Dumper (@sample_data);

exit;
