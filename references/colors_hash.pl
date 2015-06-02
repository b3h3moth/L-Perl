#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
my %colors = (
    bianco => 'white',
    verde => 'green',
    rosso => 'red',
    nero => 'black',
    grigio => 'gray'
);

my $rif = \%colors;

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
