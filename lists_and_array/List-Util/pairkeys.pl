#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;
use List::Util 'pairkeys';

my @list = qw(get up stand up stand up for your right by Bob Marley);
my @keys = pairkeys @list;
say join ', ', @keys;
