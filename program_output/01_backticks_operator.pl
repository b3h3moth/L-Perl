#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

#backticks operator '`' is a common way to run commands and capture the output
#`command`

my $modules = `cat /etc/passwd`;
#output returned as a string
say $modules;
