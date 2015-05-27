package Person8;

use strict;

# How to provide a class attribute. 

# A class attribute is a package variable, an accessor method gets/sets the
# value of that variable.

# In this case I'll use a class attribute $record_counter to keep score of how
# many times 'Person8' object will be created.

my @everyone;

# The constructor
sub new {
    my $class = shift;      # The class name, passed as the first argument
    my $self = {@_};        # Minimalist Get/Set arguments passed to new()

    bless $self, $class;
    push @full_record, $self;
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

# Class accessor methods
sub head_count {
    return scalar @everyone;
}

sub every_record {
    return @everyone;
}

1;
__END__
See main8.pl
