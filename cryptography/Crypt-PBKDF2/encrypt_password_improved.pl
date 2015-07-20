#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;
use Crypt::PBKDF2;

my $object = Crypt::PBKDF2->new(
    hash_class  => 'HMACSHA2',  # default is HMACSHA1
    hash_args   => {
        sha_size => 512,
    },
    iterations  =>  1500,       # default is 1000
    salt_len    =>  5,          # default is 4
    encoding    =>  'crypt',     # default is 'ldap'
    output_len  =>  20
);

my $clean_password = "abcdefghi";

my $encrypted_pass = $object->generate($clean_password);

say $encrypted_pass;
