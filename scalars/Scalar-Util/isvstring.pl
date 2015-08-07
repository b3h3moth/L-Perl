#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;
use Scalar::Util 'isvstring';

# isvstring EXPR
# If EXPR is a scalar which was coded as a vstring the result is true.

my $perl_version = v5.22.0;
my $format = isvstring ($perl_version) ? "%vd" : "%s";
printf($format, $perl_version);
