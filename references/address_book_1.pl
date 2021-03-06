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
    address         => "5fh avenue",
    phone_number    => 303112233,
};

#say "luca's address: ", $address_book{luca}{address};

# Get address book's data
print "name: ";
chomp(my $name = <>);

print "address: ";
chomp(my $address = <>);

print "phone_number: ";
chomp(my $phone_num = <>);

# Add data into address book
$address_book{$name} = {
    address         => $address,
    phone_number    => $phone_num,
};

say "Single person:";
say '-' x 50;

# Print out a single person
if (exists $address_book{$name}) {
    say $name;
    say $address_book{$name}{address};
    say $address_book{$name}{phone_number};
}

say "Every address:";
say '-' x 50;

# Print out every address
foreach my $who (keys %address_book) {
    say $who;
    say $address_book{$who}{address};
    say $address_book{$who}{phone_number};
}

# Add new level
$address_book{"behemoth"} = {
    address         => "47th avenue",
    phone_number    => 111222222,
    skills          => ["Perl", "C", "C++", "System Programming"],
};

say "Every address with 'skills' if exists:";
say '-' x 50;

foreach my $who (keys %address_book) {
    next unless exists $address_book{$who}{skills};
    say $who;
    say $address_book{$who}{address};
    say $address_book{$who}{phone_number};
    
    my @skills = @{$address_book{$who}{skills}};

    say 'skills: ';
    
    foreach (@skills) {
        say "\t", $_;
    }
}
