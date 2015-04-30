#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my @cards = qw(A 1 2 3 4 5 6 7 8 9 10 J Q K );
my $rif = \@cards;

#Si accede all'intero array con '@'
my $count_cards = @{$rif};
my @backup_cards = @{$rif};

say "          tot cards: $count_cards";
say "backup (copy) array: @backup_cards";

#Si accede ai singoli elementi dell'array con '->'
my $first_card = $rif->[0];
my $last_card  = $rif->[-1];

say "first card: $first_card";
say " last card: $last_card";

#sintassi alternativa (meno elegante)
my $firstcard = $$rif[0];
say "first card (alternative syntax): $firstcard";
say "third card: ${$rif}[2]";

#anonymous array, ovvero un array che non è stato dichiarato
#si racchiude tra parentesi quadre
my $ref_colors = [qw(white red blu yellow black)];
push $ref_colors, 'gray';
say @$ref_colors;
