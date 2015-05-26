package Person2;

use strict;

# Constructor
sub new { 
    my $self = {};              # hash reference
    bless $self, "Person2";     # $self became a Person2 reference
    return $self;
}

1;
