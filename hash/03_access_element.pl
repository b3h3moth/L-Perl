#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Data::Dumper;

my %country_code = (
    "france"        => "FR",
    "italy"         => "IT",
    "germany"       => "GE",
    "england"       => "UK",
    "united states" => "USA",
    "russia"        => "RU"
);

my $country = "italy";

#How to access a hash element
say $country_code{'france'};
say $country_code{$country};

print Dumper \%country_code;
