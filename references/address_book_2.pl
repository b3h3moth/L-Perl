#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Data::Dumper;

# Full version

# Main address book hash
my %address_book;

# Get address book's data
print "name: ";
chomp(my $name = <>);

print "address: ";
chomp(my $address = <>);

print "phone_number: ";
chomp(my $phone_num = <>);

print "skills: ";
chomp(my $tmp_skill = <>);

my @skill = split " ", $tmp_skill;

$address_book{$name} = {
    address         => $address,
    phone_number    => $phone_num,
    skills          => \@skill,
};

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

print Dumper \%address_book;
