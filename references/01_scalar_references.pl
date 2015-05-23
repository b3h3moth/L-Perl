#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# You can create a reference to any named variable or subroutine with a
# backslash '\' operator. This operator works like the '&' C-ANSI operator.

my $foo = 'perl';

my $scalarref  = \$foo;
my $constref   = \186_282.42;
my $arrayref   = \@ARGV;
my $hashref    = \%ENV;
my $coderef    = \sub {say 'hello'};
my $globref    = \*STDOUT;

# print out each reference
say ${$scalarref};
say $$constref;
say $$arrayref[0]; #need one argument
say $$hashref{HOME};
say $$coderef;
say $$globref;

#The backslash operator can do more than produce a single reference. It will
#generate a whole list of references if applied to a list.

my $os_name = 'DSBnepO';
my $ref = \$os_name;

say "A:  address memory: $ref";    #address memory
say "B: default OS name: $$ref";   #dereference

#modifica il valore
sub invert {
     my $ref = shift;
     $$ref = reverse($$ref);
}

invert(\$os_name);

say "C: The greatest OS is: $os_name";

sub invert2 {
    $_[0] = reverse $_[0];
}

my $os = 'SO ym si DSBnepO';
invert2($os);
say "D: $os";
