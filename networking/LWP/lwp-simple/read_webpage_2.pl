#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use LWP::Simple 'getprint';

# How to read webpage. How simple is it?
my $remote_url = 'http://www.lib.ru/unixhelp/security.txt';
getprint($remote_url);
