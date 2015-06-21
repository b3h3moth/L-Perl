#!/usr/bin/env perl
use warnings;
use strict;
use v5.10;

sub test_reverse {
    my $os_name = reverse shift;
    return "$os_name is a great OS";
}

my $os_name = "OpenBSD";
say test_reverse($os_name);

my $os_version = reverse "7.5v";
say "$os_version";
