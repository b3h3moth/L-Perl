#!/usr/bin/env perl
use warnings;
use strict;
use Personal1;

# Pass a hash reference
my $marco = Shopper::Personal1->new({
        name    => 'luca',
        budget  => 100
 });

print $marco->get_name;
print $marco->get_budget;
