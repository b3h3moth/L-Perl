package Shopper::Personal;

use strict;
use warnings;

# For some other OO languages, new() is a keyword used to construct objects. In
# Perl the new() method is just another method.

sub new {
    # The classname is passed as the first argument to @_ (automatically)
    my ($class, $args) = @_;

    # Blessing an hash reference
    return bless {
        firstname => $args->{firstname},
        lastname  => $args->{lastname},
        budget    => $args->{budget},
    }, $class;
}

sub get_firstname {
    my $self = shift;
    return $self->{firstname};
}

sub get_lastname {
    my $self = shift;
    return $self->{lastname};
}

sub get_budget {
    my $self = shift;
    return $self->{budget};
}

1;
