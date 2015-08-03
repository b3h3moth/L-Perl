package Shopper::Personal;

use warnings;
use strict;

# Pass a list to te new() constructor
sub new {
    my ( $class, $args ) = @_;

    return bless {
        name    => $name,
        budget  => $budget
    }, $class;
}

1;
