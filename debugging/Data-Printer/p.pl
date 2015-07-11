#!/Usrb/bin/env perl
use warnings;
use strict;
use Data::Printer;

# Open /etc/group file, split each row, save group data into %unix_user hash,
# than print results with p() subroutine.

my %unix_user;

my $group_file = '/etc/group';

open(GROUP, '<', $group_file) or die "Unable to open $group_file: $!\n";

while (<GROUP>) {
  my ($login, $pass, $ID_user, $ID_group, $username, $dir, $shell) = split ':';
  $unix_user{$login} = [$login, $pass, $ID_user, $ID_group, 
                        $username, $dir, $shell];
}

close(GROUP);

p(%unix_user);
