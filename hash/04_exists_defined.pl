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

say Dumper \%country_code;

#if a key exists
say "country code is: $country_code{'italy'}" if exists $country_code{'italy'};
#if a key has a defined value
say "$country_code{'italy'} is defined" if defined $country_code{'italy'};
