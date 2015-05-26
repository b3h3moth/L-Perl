package Person4;

use strict;

# How to provide object methods

# The constructor
sub new {
    my $class = shift;      # The class name, passed as the first argument
    my $self = {@_};        # Get arguments passed to new()
    bless $self, $class;

    return $self;
}

# Get firstname 
sub first_name {
    my $self = shift;
    
    return $self->{firstname};
}

# Get nickname
sub nickname {
    my $self = shift;
    
    return $self->{nickname};
}

# Get address
sub address {
    my $self = shift;
    
    return $self->{address};
}

# Get country
sub country {
    my $self = shift;
    
    return $self->{country};
}

# Get occupation
sub occupation {
    my $self = shift;
    
    return $self->{occupation};
}

1;
__END__
See main4.pl, how to call object methods
