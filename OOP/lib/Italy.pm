package Italy;

use Country;
our @ISA = qw(Country);

sub sound { 'Ciao' };

sub speak {
    my $class = shift;
    print "In $class say", $class->sound;
}

1;
