#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# pack TEMPLATE, LIST;
# It takes a LIST of ordinary Perl values, converts them into a string of bytes
# according to the TEMPLATE, and returns this string.
# 
# The TEMPLATE is a sequence of characters that give the order and type of 
# values.
my @list = qw(OpenBSD is my favorite OS);
say '  LIST: '.join ', ',@list;

my $string = pack "a[7]", @list;
say 'string: '.$string;
