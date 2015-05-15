#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Crypt::GPG;

# Config informations:
my $mail = 'behemoth@autistici.org';
my $secret_key_line = qx/gpg --list-key $mail | grep pub/;
my ($secret_key) = $secret_key_line =~ /.*\/(.*) /;
my $passphrase = '1gl3wxba9f5r';

die("Usage: $0 <file to encrypt>") if (@ARGV != 1);

my $input_file = $ARGV[0];
my ($output_file) = $input_file =~ /^(.*)\./;

my $gpg = new Crypt::GPG;
$gpg->gpgbin('/usr/bin/gpg');
