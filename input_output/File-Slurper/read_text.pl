#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;
use File::Slurper 'read_text';

my $filename = '/etc/passwd';
my $content = read_text($filename, 'utf-8');

say $filename;
