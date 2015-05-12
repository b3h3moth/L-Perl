package Data::Conversion;

use warnings;
use strict;
use diagnostics;
use Exporter 'import';
our @EXPORT_OK = qw(byte_to_bit kbyte_to_byte mbyte_to_kbyte);
our %EXPORT_TAGS = ( all => \@EXPORT_OK );

our $VERSION = '0.001';
$VERSION = eval $VERSION;

use constant   BYTE_PER_BIT => 8;
use constant KBYTE_PER_BYTE => 1024;
use constant MBYTE_PER_KBYTE => 1024;

sub byte_to_bit {
    my $bytes = shift;
    return ($bytes * BYTE_PER_BIT);
}

sub kbyte_to_byte {
    my $kb = shift;
    return ($kb * KBYTE_PER_BYTE);
}

sub mbyte_to_kbyte {
    my $mb = shift;
    return ($mb * MBYTE_PER_KBYTE);
}

1;
