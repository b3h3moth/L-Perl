#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my %hash = (
    12 => ['maria', 'franca', 'luigia'],
    43 => ['pina', 'maria', 'claudia', 'francesca', 'rossella', 'mara'],
    67 => ['giada'],
    28 => ['gina', 'fiorella'],
    98 => ['marta'],
    89 => ['rossana', 'eva'],
    10 => undef
);

#my $len_arrayref = scalar( @{$hash{43}} );
#my $total_hash_keys = keys %hash;
#my $total_hash_values = values %hash;

foreach my $size (sort keys %hash) {
    # skip value with array numbers less than 
    if ( $#{$hash{$size}} < 0 ) {
        next;
    }

    print "$size: ";

    foreach my $cur_file (@{$hash{$size}}) {
        print "$cur_file, ";
    }
    print "\n";
}
