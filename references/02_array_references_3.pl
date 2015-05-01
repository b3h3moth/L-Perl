#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

sub check_required_items {
    my $who   = shift;
    my $items = shift;
   
    # $items points to a different array, so the same code applies to different
    # arrays each time we invoke it.
    my %whos_items = map {$_,1} @$items;

    my @required = qw(preserver sunscreen water_bottle jacket);

    # for every missing provision we push that provision onto an array, forcing
    # the passenger co sonsider the item.
    my @missing = ();
    
    for my $item (@required) {
        # print if does not found in provision list
        unless ( $whos_items{$item} ) {
            print "$who is missing $item\n";
        }
    }
}

my @skipper = qw(blue_shirt hat jacket preserver sunscreen);
my @gillian = qw(red_shirt hat lucky_socks water_bottle);
my @prof = qw(sunscreen water_bottle slide_rule batteries radio);

check_required_items('gillian', \@gillian);
check_required_items('skipper', \@skipper);
check_required_items('prof', \@prof);
