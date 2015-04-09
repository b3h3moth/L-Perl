#!/usr/bin/env perl
use warnings;
use strict;
use Math::Complex;

print "Enter A:";
my $A=<stdin>;
print "Enter B:";
my $B=<stdin>;
print "Enter C:";
my $C=<stdin>;
my @integers=($A,$B,$C);
my @validate=(1,2,3...7,8,9);

my $d=$B*$B-(4*$A*$C);
if ($d lt 0){
die "the roots for this equation are imaginary in nature \n";
}
else
      {
      my $square=sqrt($d);
      my $X=(-$B+$square)/(2*($A));
      print "$X \n";
      my $y=(-$b-$square)/(2*($A));
      print "$y \n"
      }
