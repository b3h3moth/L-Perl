package Animal;

use v5.14;

sub speak {
    my $class = shift;
    say  $class->article, " $class goes ", $class->sound;
}

sub sound {
    die 'You have define sound() in a subclass';
}

sub article {
    die 'You have define article() in a subclass';
}

1;
