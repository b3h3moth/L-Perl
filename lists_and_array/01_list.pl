#!/usr/bin/env perl
use warnings;
use strict;

#In perl se si hanno valori multipli di scalari tra parentesi e separati da
#virgole, abbiamo una lista - list context.
#sono le virgole che creano la lista non le parentesi

#lista di 5 valori, ciascuno assegnato a una variabile
my ($x, $y, $z, $j, $k) = (1, 38.99, 'c', 0x1001, "stringa");
print "$x $y $z $j $k\n";

#OK, il primo va a buon fine
my ($a) = (1,2);
#NO, ci sara' un warning, variabile uninitialized
my ($b,$c) = (3);
print "$a $b $c\n";

my ($str1, $str2) = ('sotto','zero');
my ($len1, $len2) = (length($str1), length($str2));
print "Lengths are: $len1 and $len2\n";

#swapping values
($str1, $str2) = ($str2, $str1);
print "Swapping: $str1 $str2\n";
