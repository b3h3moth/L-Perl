#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use LWP::Simple 'get';

# How to read webpage with scalar
my $remote_url = 'http://www.lib.ru/unixhelp/security.txt';
my $filename = get($remote_url);
say $filename;
