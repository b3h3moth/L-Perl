#!/usr/bin/env perl
use warnings;
use strict;
use Regexp::Common qw(URI);

#matching url
my @url;

while (<>) {
    last if($_ eq "\n");
    push (@url, /$RE{URI}{HTTP}/g);
}
