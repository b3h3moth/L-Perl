package Country;
use v5.14;

sub speak {
    my $class = shift;
    say "In ".$class." say ".$class->sound;
}

sub sound {
    die "You have to define class in a subclass";
}

1;
