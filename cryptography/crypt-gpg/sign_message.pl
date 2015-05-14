#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Crypt::GPG;

# Config informations
my $mail = 'behemoth@autistici.org';
my $secret_key_line = qx/gpg --list-key $mail | grep pub/;
my ($secret_key) = $secret_key_line =~ /.*\/(.*) /;
my $passphrase = '1gl3wxba9f5r';

# Get new gpg object
my $gpg = new Crypt::GPG;
# Path of gpg executable
$gpg->gpgbin('/usr/bin/gpg');
# Set ID of default secret key
$gpg->secretkey($secret_key);
# Set passphrase 
$gpg->passphrase($passphrase);
# Debug
$gpg->debug();

my $message = 'perl programming';

my @encrypted = $gpg->encrypt($message, $mail);

foreach (@encrypted) {
    say $_;
}

my ($plaintext, $signature) = $gpg->verify(@encrypted);
say $plaintext;
