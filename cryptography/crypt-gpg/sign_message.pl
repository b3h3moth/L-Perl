#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Crypt::GPG;

# Config informations
my $mail = 'behemoth@autistici.org';
my $secret_key_line = qx/gpg --list-key $mail | grep pub/;
my ($secret_key) = $secret_key_line =~ /.*\/(.*) /;

# Get new gpg object
my $gpg = new Crypt::GPG;
# Path of gpg executable
$gpg->gpgbin('/usr/bin/gpg');
# Set ID of default secret key
$gpg->secretkey('67FD0AE6');
# Set passphrase 
$gpg->passphrase('1gl3wxba9f5r');
# Debug
$gpg->debug();

my $message = 'perl programming';

my @encrypted = $gpg->encrypt($message, 'behemoth@autistici.org');
