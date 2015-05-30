package Person2;

use strict;

# How to make a constructor

# The Constructor
sub new {
    my $class = shift;       # The first thing passed is the class name
    my $self = {};           # Hash reference
    bless $self, $class;     # $self became an object of the class $class
    return $self;
}

1;
