#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;
use Personal2;

my $luca = Shopper::Personal2->new({
        name    =>  'behemoth',
        budget  =>  250,
});

say 'Nome: ', $luca->name;
say 'Budget: ', $luca->budget;
$luca->name('Giusy');
$luca->budget(1080);
say 'new Name: ', $luca->name;
say 'new Budget: ', $luca->budget;
