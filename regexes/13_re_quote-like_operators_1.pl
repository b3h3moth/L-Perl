#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my $text = qr/sun/;
say 'sun in shining' if ($text =~ $text);
