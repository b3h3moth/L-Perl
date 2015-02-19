#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my %colors = (
    nero => 'black',
    blu  => 'blu',
    rosso => 'red',
    verde => 'green',
    grigio => 'gray',
    giallo => 'yellow',
);

#Il riferimento si realizzaccon l'operatore di riferimento '\'
my $rif = \%colors;

#Si accede a chiavi e valori anteponendo '%'
my $colors_it = keys %$rif;
my $colors_en = values %$rif;

say "tot: $colors_it";
say "tot: $colors_en";

sub translate {
    my $color = shift;

    #Si accede ai singoli elementi con '->'
    return $rif->{$color};
    #return $$rif{color};
}

say "translate from ITA to ENG one these colors:";
for my $key (keys $rif) {
    print"\'$key\' ";
}

my $tr_color = $ARGV[0];
die "Inserire colore" if (@ARGV != 1);

my $my_color = translate($tr_color);
print "\n$tr_color in ITA: $my_color";

#anonymous hash
#si usano le graffe
my $rif_city = {
    'Roma'      => 'Italia',
    'NY'        => 'USA',
    'Madrid'    => 'Spagna',
    'Parigi'    => 'Francia',
    'Londra'    => 'UK'
};
