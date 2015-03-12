#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my $sequence = "The perl prograxxing language is awesoxe";

#'tr///' substitute individual characters in the referenced string
#'tr/X/Y/'
$sequence =~ tr/x/m/;
say "$sequence";

my $url_one = "h00p://iloveperl.com";
$url_one =~ tr/0/t/;
say "$url_one";
