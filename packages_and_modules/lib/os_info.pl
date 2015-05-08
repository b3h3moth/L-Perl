#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# How to find module in 'lib/' directory
use lib 'lib';
use Unix::Utilities;

my $os_host = Unix::Utilities::get_hostname();
