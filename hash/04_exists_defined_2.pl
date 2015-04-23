#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

#Usage: ./$0 Italy Fr
#
#    Code: It
# Country: France

die "Usage $0 <country> or <country two-letter code>\n" if (@ARGV != 1);

my $text = $ARGV[0];
chomp($text);

my %country = (
    "Italy"     => "It",
    "France"    => "Fr",
    "England"   => "Uk",
    "Germany"   => "Ge",
    "Spain"     => "Es",
    "Argentina" => "Ar",
    "Brasil"    => "Brasil",
);

my %country_code = (
    "It"        => "Italy",
    "Fr"        => "France",
    "Uk"        => "England",
    "Ge"        => "Germany",
    "Es"        => "Spain",
    "Ar"        => "Argentina",
    "Br"        => "Brasil",
);

if (exists $country{$text} && length($text) > 2) {
    say "   Code: $country{$text}";
}

if (exists $country_code{$text} && length($text) == 2) {
    say "Country: $country_code{$text}";
}
