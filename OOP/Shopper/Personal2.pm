package Shopper::Personal2;

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

# Overload methods to be both a setter and a getter
sub name {
    my $self = shift;

    if (@_ > 0) {
        $self->{name} = shift;
    }

    return $self->{name};
}

sub budget {
    my $self = shift;
    
    if (@_ > 0) {
        $self->{budget} = shift;
    }
    
    return $self->{budget};
}

1;
