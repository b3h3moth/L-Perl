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

print $marco->get_name;
print $marco->get_budget;
$marco->set_name('Fiorenza');
print $marco->get_name;
