#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

#pos() function returns the offset of where the last 'm//g' search left off for
#the variable in question; pos() directly accesses the location used by the
#regexp engine to store the offset.
