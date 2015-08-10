#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;

sub luca_greets {
    my $who = shift;
    say "Luca: Hi, $who";
}

sub giusy_greets {
    my $who = shift;

    if ($who eq "Luca") {
        say "Giusy: $who?";
    } else {
        say "Giusy: hi $who";
    }
}

# Basic subroutine call
luca_greets('Giusy');
giusy_greets('Luca');

# Take a reference to the subroutine, its name is coderef. In this case '&' is
# mandatory.
my $ref_to_greeter = \&luca_greets;
say $ref_to_greeter;    # Output is CODE(0x106efe90)

# To get back to the original subroutine, you must dereference a code 
# reference.
&luca_greets('Giusy');

