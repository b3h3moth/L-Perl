#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# Soft references
no strict 'refs';
my $str = 'pi';
${$str} = 3.1416;
say ${$str}, $pi;
