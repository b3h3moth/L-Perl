package Person5;

use strict;

# How to provide Get/Set object methods

# The constructor
sub new {
    my $class = shift;      # The class name, passed as the first argument
    my $self = {@_};        # Get/Set arguments passed to new()

    bless $self, $class;
    return $self;
}

# Get/Set firstname 
sub first_name {
    my $self = shift;
    return $self->{firstname};
}

# Get/Set nickname
sub nickname {
    my $self = shift;
    return $self->{nickname};
}

# Get/Set address
sub address {
    my $self = shift;
    return $self->{address};
}

# Get/Set country
sub country {
    my $self = shift;
    return $self->{country};
}

# Get/Set occupation
sub occupation {
    my $self = shift;
    return $self->{occupation};
}

1;
__END__
See main5.pl, how to call object methods
