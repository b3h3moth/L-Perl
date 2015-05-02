#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use LWP::Simple;

# Usage of libwww-perl library.

# get(URL)
# get document specified by URL:
my $remote_url = 'https://gnu.org/philosophy/philosophy.html';

my $content = get($remote_url) or die("Unable to fetch $remote_url\n");

# count how many times 'gnu' word is mentioned:
my $count;

while ($content =~ /gnu/gi) {
    $count++;
}

say "\'gnu\' mentioned $count times";
