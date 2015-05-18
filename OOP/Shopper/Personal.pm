package Shopper::Personal;

use warnings;
use strict;

sub new {
    my ($class, $arg_for) = @_;

    return bless {
        name    => $arg_for->{name},
        budget  => $arg_for->{budget},
    }, $class;
}
