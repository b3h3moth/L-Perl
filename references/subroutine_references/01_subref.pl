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
# reference (method 1)
&luca_greets('Mara');

# Replace the name of the subroutine with curly braces around the scalar
# reference to subroutine (method 2)
&{$ref_to_greeter}('Fiorenza');

# If the value inside curly braces is a simple scalar variable, we can drop
# the braces (method 3)
&$ref_to_greeter('Lodovica');

# We can use also the arrow notation (method 4)
$ref_to_greeter->('Rossella');

# Iterate over all subroutines, each of which is a coderef, then each coderef
# is dereferenced.
for my $greet(\&luca_greets, \&giusy_greets) {
    $greet->('Claudia');
}
