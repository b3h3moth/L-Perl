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

# split the file line by line:
my @data = split("\r\n", $remote_file);

# remove and process the header line:
my $data_line = shift(@data);
my @header = split(',', $data_line);

# empty array to hold sample information
my @sample_data;

# process the samples
foreach (@data) {
    my @sample = split(",", $_);

    my %sample_hash;

    # convert to an hash using @header array as the key:
    for (my $i=0; $i<scalar(@sample); $i++) {
        $sample_hash{$header[$i]} = $sample[$i];
    }

    # put it into the @sample_data array as a reference:
    push (@sample_data, \%sample_hash);
}

# print resulting data structure:
print Dumper (@sample_data);
