#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;
use Modern::Perl;

# What happened if within a program there is a called to suborotine that
# doesn't exist? Probably will be an undefined subroutine error
kernel_version(unix => 'bsd');

# solved :)
sub AUTOLOAD{ say 'AUTOLOAD()' }

