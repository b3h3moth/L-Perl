#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

#to match special characters use backslah before the special character.
my $actor = "Mr. Bean";

say "$actor is fine :)" if ($actor =~ m/Mr\./);
