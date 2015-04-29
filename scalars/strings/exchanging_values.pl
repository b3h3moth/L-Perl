#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# How to exchange the values of two scalar variables (no temp variable):
my $name = 'luca';
my $nickname = 'behemoth';

say "before: name/$name nickname/$nickname";
($name, $nickname) = ($nickname, $name);
say " after: name/$name nickname/$nickname";
