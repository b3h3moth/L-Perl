#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Digest::MD5; 

# How to calculate md5 hash of a file

die("Usage: $0 <filename>\n") if (@ARGV != 1);
