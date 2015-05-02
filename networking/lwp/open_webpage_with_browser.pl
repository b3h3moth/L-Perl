#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use LWP::Simple;

my $remote_url = 'http://www.openbsd.org/faq/upgrade57.html';
my $filename = 'doc.html';

if ( is_error(getstore($remote_url, $filename)) ) {
    die "Unable to fetch <$remote_url>\n";
}

system "lynx $filename";
