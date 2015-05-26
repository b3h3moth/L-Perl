#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
BEGIN { $Crypt::UnixCrypt::OVERRIDE_BUILTIN = 1 }
use Crypt::UnixCrypt;

my $text = "Password Encryption";
my $hashed = crypt($text, "1A");
say $hashed;
