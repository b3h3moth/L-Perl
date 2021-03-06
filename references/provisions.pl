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
    # the passenger to consider the item.
    my @missing = ();
    
    for my $item (@required) {
        # print if does not found in provision list
        unless ( $whos_items{$item} ) {
            print "$who is missing $item\n";
        }
    }

    # find any items missing during scan, push them into array @missing
    if (@missing) {
        print "adding @missing to @$items for $who\n";
        push @$items, @missing;
    }
}

my @skipper = qw(blue_shirt hat jacket preserver sunscreen);
my @skipper_with_name = ('Skipper'=> \@skipper);

my @prof = qw(sunscreen water_bottle slide_rule batteries radio);
my @prof_with_name = ('Prof'=> \@prof);

my @gillian = qw(red_shirt hat lucky_socks water_bottle);
my @gillian_with_name = ('Gillian'=> \@gillian);

# We have three elements in @all_with_names, each of which is a reference to an
# array with two elements: the name and its initial provisions.
my @all_with_names = (
    \@skipper_with_name,
    \@prof_with_name,
    \@gillian_with_name,
);

# $all_with_names[0] is the array reference for the Skipper's data
# $all_with_names[1] is the array reference for the Prof's data
# $all_with_names[2] is the array reference for the Gillian's data

# for my $person (@all_with_names) {
#     my $who = $$person[0];
#     my $provision_ref = $$person[1];
#     check_required_items($who, $provision_ref);
# }
# 
# Shorten
for my $person (@all_with_names) {
    check_required_items(@$person);
}
