#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use LWP::Simple 'get';

my $remote_url = 'http://www.defensecode.com/public/DefenseCode_Unix_WildCards_Gone_Wild.txt';
my $filename = get($remote_url);
say "Page starts with: ", substr $filename, 0, 94;
