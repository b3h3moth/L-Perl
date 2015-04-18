#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Digest::SHA qw(sha1 sha1_hex sha1_base64 sha256 sha384_hex sha512_base64);

# How to calculate SHA1 on a string
my $text = "no woman, no cry";

my $digest1 = sha1($text);
say 'sha1: '.$digest1;

my $digest2 = sha1_hex($text);
say 'sha1_hex: '.$digest2;

my $digest3 = sha1_base64($text);
say 'sha1_babase644: '.$digest3;

my $digest4 = sha256($text);
say 'sha1_sha256: '.$digest4;

my $digest4 = sha384_hex($text);
say 'sha384_hex: '.$digest4;
