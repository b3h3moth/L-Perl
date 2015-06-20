#!/usr/bin/env perl
use strict;
use warnings;
use Net::Address::IP::Local;
use v5.20.2;

# Get the local system's IP address
my $local_address = Net::Address::IP::Local->public;
say "my local IP is: ", $local_address;
