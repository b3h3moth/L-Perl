#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;
use URI;

my $uri = URI->new('https://www.perl.org/index.html');

say 'Protocol: ', $uri->scheme;
say '    Host: ', $uri->host;
say '    Path: ', $uri->path;
