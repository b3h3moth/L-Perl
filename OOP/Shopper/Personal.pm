package Shopper::Personal;

use strict;
use warnings;

# For some other OO languages, new() is a keyword used to construct objects. In
# Perl the new() method is just another method.

sub new {
    my ($class, $args) = @_;

    return bless {
        firstname => $args->{firstname},
        lastname => $args->{lastname},
    }, $class;
}

1;
