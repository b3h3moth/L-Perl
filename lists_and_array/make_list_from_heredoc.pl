#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# Make a list with here document and extract lines:

my @dante_inferno = (<< "_END_DOC_" =~ /^\s*(.+)/gm);
	Nel mezzo del cammin di nostra vita
    mi ritrovai per una selva oscura
    ché la diritta via era smarrita.
    Ahi quanto a dir qual era è cosa dura
    esta selva selvaggia e aspra e forte
    che nel pensier rinova la paura!
    Tant'è amara che poco è più morte;
    ma per trattar del ben ch'i' vi trovai,
    dirò de l'altre cose ch'i' v'ho scorte.
    Io non so ben ridir com'i' v'intrai,
    tant'era pien di sonno a quel punto
    che la verace via abbandonai.
    ...
_END_DOC_

say join "\n",@dante_inferno;
