#!/usr/bin/env perl
use warnings;
use strict;

my $sequence = "AACTAGCGGATTCCAGACCGT";

#'s///' when we want to substitute a pattern with a string
#'s/match/replacement'
$sequence =~ s/GATTCCA/_H_A_C_K_/;
print "$sequence\n";
$sequence =~ tr/A/O/;
print "$sequence\n";

my $text = "http://iloveperl.com";
print "$text\n";

#con l'escaping e' fattibile, tuttavia vi sono alternative migliori
$text =~ s/http:\/\///;
print "$text\n";
#le alternative sono:
#$text =~ s!http://!!;
#$text =~ s@http://@@;
#$text =~ s#http://##;

my $texturl = "http://www.perl.com";
$texturl =~ s!http://!!;
print "$texturl\n";
