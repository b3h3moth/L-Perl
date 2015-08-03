#!/usr/bin/env perl
use warnings;
use strict;
use Personal1;
use v5.22.0;

# Pass a hash reference
my $marco = Shopper::Personal1->new({
        name    => 'luca',
        budget  => 100
 });

say 'Personal Shopper name: ', $marco->get_name;
say 'Budget: ', $marco->get_budget;
$marco->set_name('Fiorenza');
say 'New Personal Shopper name: ',$marco->get_name;
$marco->set_budget(580);
say 'new Budget: ', $marco->get_budget;
