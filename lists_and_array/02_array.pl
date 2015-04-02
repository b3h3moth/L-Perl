#!/usr/bin/env perl
use warnings;
use strict;
use v5.10;

my @gatti;
my @cani = qw(Luna Peppino Otto Gino Rocco Franco Bobby);
my $tot_cani = @cani;
say 'Ho '.@cani.' cani';
say 'Ripeto '.@cani.' cani' if @cani;
say 'Ho '.@gatti.' gatti' if @gatti;

# array length
my @caratteri = qw(a b c d e f g h k i j l m n o p q r s t u v w z);
print "(non corretto) - Lunghezza array: ", length(@caratteri), "\n";
my $len_arr = @caratteri;
print "(    corretto) - Lunghezza array: ", $len_arr, "\n";

# array length
my $len = scalar(@cani);
say "L'array \@cani ha ".$len." elementi";

my $primo_indice = 0;
my $ultimo_indice = @cani - 1;
#oppure, meno elegante
my $ultimo_indice2 = $#cani;

say "primo indice: $primo_indice\n".
    "      ultimo: $ultimo_indice\n".
    "     ultimo#: $ultimo_indice2";

say @cani." >@cani";

#svuoto l'array
@cani = ();

#creo un array con l'operatore di intervallo '..'
my @caratteri = 'a' .. 'z';

#Lunghezza array - solo con gli array
my $car_len = @caratteri;
print "Length characters: $car_len\n";

for (my $i =0; $i<$car_len; $i += 1) {
    print $caratteri[$i], " ";
}
