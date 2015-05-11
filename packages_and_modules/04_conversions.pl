#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

use lib 'lib';
use Data::Conversion qw(bytes_to_bit);

say 'There are '.bytes_to_bit(4).'bit in 4byte';
