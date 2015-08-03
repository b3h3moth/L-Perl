package Shopper::Personal2;

use warnings;
use strict;

# Pass a list to te new() constructor
sub new {
    my ( $class, $name, $budget ) = @_;

    return bless {
        name    => $name,
        budget  => $budget
    }, $class;
}

1;
