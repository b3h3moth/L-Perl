package Data::Conversion;

use warnings;
use strict;
use diagnostics;
use Exporter 'import';
our @EXPORT_OK = qw(bytes_to_bit);
our %EXPORT_TAGS = ( all => \@EXPORT_OK );

our $VERSION = '0.001';
$VERSION = eval $VERSION;

use constant BYTE_PER_BIT => 8;

sub bytes_to_bit {
    my $bytes = shift;
    return ($bytes * BYTE_PER_BIT);
}

1;
