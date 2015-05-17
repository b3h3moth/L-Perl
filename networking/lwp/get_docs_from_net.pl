#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use LWP::Simple; # LWP - The World-Wide Web library for Perl

# Count how many times 'gnu' word is mentioned into $content

# get(URL)
# get document specified by URL:
my $remote_url = 'https://gnu.org/philosophy/philosophy.html';
my $content = get($remote_url);

if (is_error($content)) {
    die "Unable to fetch <$content>\n";
}

my $count;
while ($content =~ /gnu/gi) {
    $count++;
}

say "\'gnu\' mentioned $count times";
