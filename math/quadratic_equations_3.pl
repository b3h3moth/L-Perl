#!/usr/bin/perl
use Benchmark;
sub quadratic {
 # Compute the larger root of a quadratic polynomial
my ($a, $b, $c) = @_;
return (-$b + sqrt($b*$b - 4*$a * $c)) / 2*$a;
}
sub bruteforce {
 # Search linearly until we find a good-enough choice
my ($low, $high) = @_;
my $x;
for ($x = $low; $x <= $high; $x += .001) {
return $x if abs($x * ($x+1) - .999) < .001;
}
}
timethese(10000, { quadratic => 'quadratic(1, 1, -1)',
bruteforce => 'bruteforce(0, 1)'
});

