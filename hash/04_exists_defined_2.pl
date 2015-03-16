#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

#Usage: ./$0 Italy Fr
#   Code: It
#Country: France
die "Usage $0 <country><country two-letter code>\n" if @ARGV != 2;

my ($state, $code) = @ARGV;

my %country = (
    "Italy"     => "It",
    "France"    => "Fr",
    "England"   => "Uk",
    "Germany"   => "Ge"
);

my %country_code = (
    "It"        => "Italy",
    "Fr"        => "France",
    "Uk"        => "England",
    "Ge"        => "Germany"
);

say "   Code: $country{$state}" if exists $country{$state};
say "Country: $country_code{$code}" if exists $country_code{$code};
