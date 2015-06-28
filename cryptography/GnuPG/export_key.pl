#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use GnuPG;

use constant USERID     => 'behemoth@autistici.org';

my $gpg = new GnuPG();

$gpg->export_keys(
    keys    => USERID,
    armor   => 1,
    output  => 'key.pub'
);
