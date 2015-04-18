#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Digest::SHA qw(sha1 sha1_hex sha1_base64 sha256 sha384_hex sha512_base64);

# How to calculate SHA1 on a string
my $text = "no woman, no cry";
my $result_sha1 = sha1($text);
say $result_sha1;
