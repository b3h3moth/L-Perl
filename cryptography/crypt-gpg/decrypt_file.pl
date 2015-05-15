#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Crypt::GPG;

# Config informations:
my $mail = 'behemoth@autistici.org';
my $secret_key_line = qx/gpg --list-key $mail | grep pub/;
