package Shopper::Personal;

use strict;
use warnings;

sub new {
    my ($class, $args) = @_;

    return bless {
        firstname => $args->{firstname},
        lastname => $args->{lastname},
    }, $class;
}

1;
