package Shopper::Personal1;

use warnings;
use strict;

sub new {
    my ( $class, $args ) = @_;

    return bless {
        name    => $args->{name},
        budget  => $args->{budget}
    }, $class;
}

1;
