#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;
use List::Util 'pairs';

my %hash = (
    lang   => 'perl',
    os     => 'gnu/linux',
    distro => 'debian',
    kernel => '4.0.0.2'
);

foreach (pairs %hash) {
    say "$_->[0] : $_->[1]";
}
