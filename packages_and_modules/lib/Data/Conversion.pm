package Data::Conversion;

use warnings;
use strict;
use diagnostics;

use constant BYTE_PER_BIT => 8;

our $VERSION = '0.001';
$VERSION = eval $VERSION;

sub bytes_to_bit {
    my $bytes = shift;
    return (bytes_to_bit($bytes) * BYTE_PER_BIT);
}

1;
