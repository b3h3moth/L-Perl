#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Modern::Perl;

# What happened if within a program there is a called to suborotine that
# doesn't exist?
kernel_version(unix => 'bsd');

sub AUTOLOAD{ say 'AUTOLOAD()' }
