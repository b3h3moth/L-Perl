#!/usr/bin/env perl
use warnings;
use strict;
use Regexp::Assemble;

my $ra_obj = Regexp::Assemble->new;
$ra_obj->add('ab+c');
