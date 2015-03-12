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

#with escaping is ok but there are better alternatives
$url_one =~ s/http:\/\///;
say "$url_one";

#alternatives are:
#$url_one =~ s!http://!!;
#$url_one =~ s@http://@@;
#$url_one =~ s#http://##;

my $url_two = "http://www.perl.com";
$url_two =~ s!http://!!;
say "$url_two";
