#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;
use Crypt::PBKDF2;

my $object = Crypt::PBKDF2->new;
my $pass = "weak_password";

my $encrypted_pass = $object->generate($pass);
