#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# How to achieve a tree-like data structure.

# Main address book hash
my %address_book;

# Basic structure
$address_book{"luca"} = {
    address         => "san lorenzo",
    phone_number    => 111111,
};

# say $address_book{luca}{address};

print "        name: ";
chomp(my $name = <>);

print "     address: ";
chomp(my $address = <>);

print "phone_number: ";
chomp(my $phone_num = <>);
