package Unix::Utilities;

use warnings;
use strict;
use Sys::Hostname;

# A namespace is a place to organize logically related code and data, all 
# subroutines and package variables declared in that namespace cannot be 
# accessed outside of that namespace unless you prepend the package name to 
# them or if the package "exports" the subroutines to other packages. This 
# allows you to reuse names in different namespaces without worrying about
# collision.
# 
# A package name is one or more identifiers separated by double colons. 
# By convention, a module starts his name with uppercase letter. By convention,
# this module should correspond to a path and filename of 'Module.pm' and it 
# should usually be located in a 'lib' directory (This example is 
# lib/Unix/Utilities.pm).
#
# The .pm extension is what Perl uses to identify a given module. A module is 
# simply a file that contains one or more packages, although it's generally 
# recommended to have one package per module.

# It's also strongly recommended that module and package names correspond.
# For example, a file called 'System/Unix/BSD/Kernel.pm' should contain a 
# package named 'System::Unix::BSD::Kernel'.

our $VERSION = 1.0;

sub get_hostname {
    my $host = hostname();
    return $host;
}

1;
