#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;
use Crypt::PBKDF2;

my @password = qw(weak-pass-for-testing weak_pass_for_testing kljasdhf);
my $encrypted_pass = "{X-PBKDF2}HMACSHA1:AAAD6A:qJZXJQ==:suQCLEns5f0Y2v+QUJ3gERgg/r4=";

my $object = Crypt::PBKDF2->new;

foreach (@password) {
    if ($object->validate($encrypted_pass, $_)) {
        say "[$_] Test passed, your password is ok";
    } else {
        say "[$_] WARNING! password is wrong";
    }
}
