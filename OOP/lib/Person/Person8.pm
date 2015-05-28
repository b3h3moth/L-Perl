package Person8;

use strict;

# How to provide a class attribute. 

# An array of object created
my @object_created;

# The constructor
sub new {
    my $class = shift;      # The class name, passed as the first argument
    my $self = {@_};        # Minimalist Get/Set arguments passed to new()

    bless $self, $class;
    push @object_created, $self;
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
# Both are references, head_count() count how many objects will be created,
# every_record() will be useful to get all record values.
sub head_count {
    return scalar @object_created;
}

sub every_record {
    return @object_created;
}

1;
__END__
See main8.pl
