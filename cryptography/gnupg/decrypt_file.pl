#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use GnuPG;

use constant PASSWD     => '1gl3wxba9f5r';

my $gpg = new GnuPG();

$gpg->decrypt( 
    output      => 'test.txt',
    ciphertext  => 'test.gpg',
    passphrase  => PASSWD
);
