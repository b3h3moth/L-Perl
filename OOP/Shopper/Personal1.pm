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
        budget  => $args->{budget},
    }, $class;
}

sub get_name {
    my $self = shift;
    return $self->{name};
}

sub get_budget {
    my $self = shift;
    return $self->{budget};
}

1;
