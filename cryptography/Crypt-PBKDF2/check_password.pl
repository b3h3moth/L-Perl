#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;
use Crypt::PBKDF2;

my @password = qw(alcnshdto djshutlso abcdefghi laosdktip spidotqwt ajsdtosop);
my $encrypted_pass = "{X-PBKDF2}HMACSHA1:AAAD6A:fjrXNw==:ZkwbGNgk9ZsN6b/+fSm1vCRRZO4=";

my $object = Crypt::PBKDF2->new;

foreach (@password) {
    if ($object->validate($encrypted_pass, $_)) {
        say "[$_] Test passed, your password is ok";
    } else {
        say "[$_] WARNING! password is wrong";
    }
}
