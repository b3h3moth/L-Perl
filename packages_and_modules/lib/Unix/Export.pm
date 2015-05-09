package Unix::Export;

use warnings;
use strict;
use Sys::Hostname;
# Would be annoying typing every time fully qualified function, so you can
# export those functions calling code's namespace. The module for doing this is
# Exporter.
use base 'Exporter';

# Functions max_users(), get_hostname() and get-id() can be exported:
our @EXPORT_OK = qw(max_users get_hostname get_id);
our %EXPORT_TAGS = ( all => \@EXPORT_OK );

our $VERSION = '0.001';
$VERSION = eval $VERSION;


sub max_users {
    10000;
}

sub get_hostname {
    my $host = hostname();
    return $host;
}

sub get_id {
    my $id = getlogin || getpwuid($<) || 'other';
    return $id;
}

1;
