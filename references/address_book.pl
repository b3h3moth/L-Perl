#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Data::Dumper;

# How to achieve a tree-like data structure.

# Main address book hash
my %address_book;

# Basic structure
$address_book{"luca"} = {
    address         => "san lorenzo",
    phone_number    => 111111,
};

# say $address_book{luca}{address};

# Get address book's data
print "        name: ";
chomp(my $name = <>);

print "     address: ";
chomp(my $address = <>);

print "phone_number: ";
chomp(my $phone_num = <>);

# add data into address book
$address_book{$name} = {
    address         => $address,
    phone_number    => $phone_num,
};

say Dumper \%address_book;
