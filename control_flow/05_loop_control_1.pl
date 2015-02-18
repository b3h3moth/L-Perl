#!/usr/bin/env perl
use warnings;
use strict;
use v5.10;

#istruzioni di controllo del ciclo next e last
#next: fa ripartire il loop e aumenta  il valore del counter
#redo: fa ripartire il loop ma non aumenta il valore del counter
#last: termina il loop
say 'istr controllo: next last redo';
my @num = (6 .. 10);
while (@num)
{
    my $val = shift @num;
    next if $val eq 6;
    say $val;
}

say 'continue';
my $i = 0;
while ($i < 5)
{
    next unless $i % 2;
    say $i;
}
continue
{
    $i++;
}
