#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
BEGIN { $Crypt::UnixCrypt::OVERRIDE_BUILTIN = 1 }
use Crypt::UnixCrypt;

my $text = "My name is Behemoth";
my $hashed = crypt($text, "A9");
say $hashed;


