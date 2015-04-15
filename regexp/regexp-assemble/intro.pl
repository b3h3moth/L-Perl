#!/usr/bin/env perl
use warnings;
use strict;
use Regexp::Assemble;

my $ra_obj = Regexp::Assemble->new;
$ra_obj->add('b+b');
$ra_obj->add('\s?');
$ra_obj->add('\w?');
print $ra_obj->re;
