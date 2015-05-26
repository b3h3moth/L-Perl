package Person2;

use strict;

# Constructor
sub new { 
    my $self = {};              # hash reference
    bless $self, "Person2";     # $self became an object of Person2 class
    return $self;
}

1;
