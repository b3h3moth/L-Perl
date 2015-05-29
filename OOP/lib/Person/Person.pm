package Person;

use strict;

# Full Person class

my @object_created;

# The constructor and initialization
sub new {
    my $class = shift;      # The class name, passed as the first argument
    my $self = {@_};        # The rest of arguments into a new hash reference

    bless $self, $class;    # Which class the reference belongs to
    $self->_init();         # Initialization
    return $self;           # Return the object
}

# Private method
sub _init {
    my $self = shift;
    push @object_created, $self;    # push each record into @object_created
}

# Object accessor methods. Minimalist Get/Set methods
sub first_name {
    $_[0]->{firstname} = $_[1] if defined $_[1];
    $_[0]->{firstname};
}

sub nickname {
    $_[0]->{nickname} = $_[1] if defined $_[1];
    $_[0]->{nickname};
}

sub address {
    $_[0]->{address} = $_[1] if defined $_[1];
    $_[0]->{address};
}

sub country {
    $_[0]->{country} = $_[1] if defined $_[1];
    $_[0]->{country};
}

sub occupation {
    $_[0]->{occupation} = $_[1] if defined $_[1];
    $_[0]->{occupation};
}

# Class accessor methods
sub head_count {
    return scalar @object_created;
}

sub every_record {
    return @object_created;
}

# Utility methods
sub full_address {
    my $self = shift;
    return $self->address().' '.$self->country();
}

sub print_every_record {
    my $self = shift;

   foreach my $rec ($self->every_record()) {
       print $self->head_count(),"\n";
       print 'name: ', $rec->first_name, ' a.k.a.: ', $rec->nickname, "\n",
           'country: ', $rec->country, ', address: ', $rec->address, "\n",
           'occupation: ', $rec->occupation, "\n";
   }
}


1;
__END__
See main11.pl
