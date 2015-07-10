#!/usr/bin/env perl
use warnings;
use strict;
use Data::Dumper;

# A small test to verify auovivification with hashes.

my %linux;
$linux{linux}{kernel}{source}{version} = '4.1.2';
print Dumper \%linux;
