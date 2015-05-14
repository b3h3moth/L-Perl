#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Crypt::GPG;

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
