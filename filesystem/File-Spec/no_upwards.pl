#!/usr/bin/env perl
use warnings;
use strict;
use diagnostics;
use v5.14;
use File::Spec;

my @paths = qw(../../../etc.././home/devel../etc/config);
File::Spec->no_upwards( @paths );
say join ', ', @paths;
