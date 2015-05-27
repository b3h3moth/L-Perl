package Person6;

use strict;

# Minimalist Get/Set object methods

# The constructor
sub new {
    my $class = shift;      # The class name, passed as the first argument
    my $self = {@_};        # Minimalist Get/Set arguments passed to new()

    bless $self, $class;
    return $self;
}

# Minimalist Get/Set first_name
sub first_name {
    $_[0]->{firstname} = $_[1] if defined $_[1];
    $_[0]->{firstname};
}

# Minimalist Get/Set nickname
sub nickname {
    $_[0]->{nickname} = $_[1] if defined $_[1];
    $_[0]->{nickname};
}

# Minimalist Get/Set address
sub address {
    $_[0]->{address} = $_[1] if defined $_[1];
    $_[0]->{address};
}

# Minimalist Get/Set country
sub country {
    $_[0]->{country} = $_[1] if defined $_[1];
    $_[0]->{country};
}

# Minimalist Get/Set occupation
sub occupation {
    $_[0]->{occupation} = $_[1] if defined $_[1];
    $_[0]->{occupation};
}

1;
__END__
See main6.pl, how to call object methods
