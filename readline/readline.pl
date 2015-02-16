#!/usr/bin/env perl
use warnings;
use strict;
use v5.10;

#readline <>
say 'Come ti chiami?';
my $name = <>;
chomp $name;
say "Ti chiami, $name";
