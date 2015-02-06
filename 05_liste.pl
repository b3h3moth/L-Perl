#!/usr/bin/env perl
use warnings;
use strict;

#sono le virgole che creano la lista non le parentesi
my @fibonacci = (1,2,3,5,8,13,21,34,55);

#liste con l'operatore di intervallo ..
my @caratteri = 'a' .. 'z';

#liste con l'operatore qw() per spezzare un letterale stringa con il carattere
#di spaziature per metter su una lista di stringhe
my @stringlist = qw(probabilmente questa sera fara' una bella nevicata);

#solo con gli array
my $car_len = @caratteri;
print $car_len, "\n";

for (my $i =0; $i<$car_len; $i += 1) {
    print $caratteri[$i], "\t";
}
