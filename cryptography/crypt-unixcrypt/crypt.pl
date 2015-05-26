#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Crypt::UnixCrypt;

my $text = "My name is Behemoth";
my $hashed = crypt($text, "A9");
say $hashed;
