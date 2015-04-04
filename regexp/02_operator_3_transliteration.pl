#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my $sequence = "Th1 p1rl prograHHing languag1 is aw1soH1";

#'tr///' substitute individual characters in the referenced string
#'tr/X/Y/'
say "Before: $sequence";
$sequence =~ tr/H/m/;
$sequence =~ tr/1/e/;
say " After: $sequence";

my $url_one = "h00p://iloveperl.com";
say "Before: $url_one";
$url_one =~ tr/0/t/;
say " After: $url_one";
