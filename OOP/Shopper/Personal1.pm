package Shopper::Personal1;

use warnings;
use strict;

# Pass a hash reference to the new constructor
sub new {
    my ( $class, $args ) = @_;

    # You can use bless() with any kind of reference, but is much easier to 
    # work with a hash reference.
    return bless {
        name    => $args->{name},
        budget  => $args->{budget}
    }, $class;
}

1;
