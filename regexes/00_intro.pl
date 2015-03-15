#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;


$_ = 'this is a \\ backslash';
if (/\\/) {
    print;
    say "\nIt matched";
}
