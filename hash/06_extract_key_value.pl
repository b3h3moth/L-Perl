#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my %country_code = (
    "france"        => "FR",
    "italy"         => "IT",
    "germany"       => "GE",
    "england"       => "UK",
    "united states" => "USA",
    "russia"        => "RU"
);

#extract keys
for my $key (keys %country_code)
{
    say "Chiave: $key";
}

#extract values
for my $value (values %country_code)
{
    say "value: $value";
}

#extract key:value
while (my ($country, $code) = each %country_code)
{
    say "$country vive a $code";
}
