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

my $country = "germany";

delete $country_code{'france'};     #remove a key/value pair
delete $country_code{$country};     #remove a key/value pair

say Dumper \%country_code;

%country_code = ();     #delete all of the key/value pairs from a hash
