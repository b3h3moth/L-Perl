#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Statistics::R;

my $object = Statistics::R->new();
$object->startR;
$object->send('sequence <- c(1,1,2,3,5,8,13,21,34,55,89,144,233,377,610)');
$object->send('png("image.png", width=500, height=500)');
$object->send('barplot(sequence, main="Fibonacci Series")');
$object->stopR;

