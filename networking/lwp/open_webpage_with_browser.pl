#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use LWP::Simple;

my $remote_url = 'htttp://www.opensdssorg/faq/upgrade57.html';
my $filename = 'doc.html';

die("Unable to fetch $remote_url") unless (getstore($remote_url, $filename));

