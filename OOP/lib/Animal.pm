package Animal;

use v5.14;

sub speak {
    my $class = shift;
    say "A $class goes ", $class->sound;
}

sub sound {
    die 'You have define sound() in a subclass';
}

1;
