#!/usr/bin/env perl
use warnings;
use strict;

#calcolo il numero di elementi dell'array
my @caratteri = qw(a b c d e f g h k i j l m n o p q r s t u v w z);
print "(non corretto) - Lunghezza array: ", length(@caratteri), "\n";
my $len_arr = @caratteri;
print "(    corretto) - Lunghezza array: ", $len_arr, "\n";
