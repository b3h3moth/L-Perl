#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use LWP::Simple;
use Data::Dumper;

# Retrieving files from internet

my $remote_url = 'http://www.openbsd.org/57.html';
my $data_file = get($remote_url) or die ("Unable to fetch file\n");
