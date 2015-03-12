#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my $sequence = "The perl prograxxing language is awesoxe";

#'tr///' substitute individual characters in the referenced string
#'tr/X/Y/'
$sequence =~ tr/x/m/;
say "$sequence";

my $url_one = "hXXp://iloveperl.com";
$url_one =~ tr/X/t/;
print $url_one;

#con l'escaping e' fattibile, tuttavia vi sono alternative migliori
$url_one =~ s/http:\/\///;
print "$url_one\n";
#le alternative sono:
#$url_one =~ s!http://!!;
#$url_one =~ s@http://@@;
#$url_one =~ s#http://##;

my $url_two = "http://www.perl.com";
$url_two =~ s!http://!!;
print "$url_two\n";
