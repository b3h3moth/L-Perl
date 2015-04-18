#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Digest::MD5 qw(md5_hex);

# How to calculate md5 on a string
my $text = 'natural mystic blowing through the air';
my $result = md5_hex($text);
say $text.': '.$result;
