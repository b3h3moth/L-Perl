#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use LWP::Simple; # LWP - The World-Wide Web library for Perl
use Data::Dumper;

# Fetching csv files from internet and manage it

my $remote_url = 'http://bixsolutions.net/profiles.csv';
my $remote_file = get($remote_url);

if (is_error($remote_file)) {
    die "Unable to fetch <$remote_file>\n";
}

# split every line and store into an array
my @data = split("\r\n", $remote_file);

# copy every array member into $data_line
my $data_line = shift(@data);

# process header, work with cvs data, split each comma ','
my @header = split(',', $data_line);

# array for final results
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
