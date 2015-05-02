#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use LWP::Simple;

# Get a web page and retrieve the length of the content in bytes

my $remote_url = 'https://gnu.org/philosophy/free-sw.html';

my $content = get($remote_url) or die("Unable to fetch $remote_url\n");

say "$remote_url: ".length($content).' bytes';
