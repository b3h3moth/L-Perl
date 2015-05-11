#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

use lib 'lib';
use Data::Conversion qw(bytes_to_bit kbytes_to_byte);

say 'There are '.bytes_to_bit(1).'bit in 1byte';
say 'There are '.kbytes_to_byte(1).'byte in 1Kb';
