#!/usr/bin/env perl
use strict;
use warnings;

my $data = <<DATA;
4,8,3
2,2,3
-1,2,8
DATA

open my $inFile, '<', \$data or die "File open failed: $!\n";
my @temp = map {[split ',']} <$inFile>;
close $inFile;

for my $values (@temp) {
    my $quadratic = quadratic (@$values);

    if (! defined $quadratic) {
        printf "a = %f, b = %f, c = %f: No solution\n", @$values;
        next;
    }

    printf "a = %f, b = %f, c = %f: %f\n", @$values, $quadratic;
}

sub quadratic {
    my ($a, $b, $c) = @_;
    my $root = $b*$b - 4*$a * $c;

    return if ! $a;
    return if $root < 0;
    return -($b + (0 < $b ? 1 : -1) * sqrt($root)) / 2*$a;
}
