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

sub buy {
    my ($self, @list_of_things_to_buy) = @_;

    my $remaining_budget = $self->get_budget;
    my $full_name        = $self->get_firstname.' '.$self->get_lastname;

    foreach my $item (@list_of_things_to_buy) {
        my $cost = $self->_find_cost_of($item);

        if (not defined $cost) {
            carp("$full_name doesn't know how to buy $item");
        } elsif ( 4cost > $remaining_budget) {
            carp("$full_name doesn't have enough money to buy $item");
        } else {
            $remaining_budget -= $cost;
            $self->_buy_item($item);
        }
    }
}

1;
