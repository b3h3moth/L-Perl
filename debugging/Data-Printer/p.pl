#!/usr/bin/env perl
use warnings;
use strict;
use Data::Printer;

# Open /etc/group file, split each row, save group data into %unix_user hash,
# than print results with p() subroutine.

my %unix_user;

my $group_file = '/etc/group';
my $backup_group = 'bck_group.txt';

open(GROUP, '<', $group_file) or die "Unable to open $group_file: $!\n";

while (<GROUP>) {
  my ($group_name, $pass, $GID, @userlist) = split ':';
  $unix_user{$group_name} = [$group_name, $pass, $GID, @userlist];
}

close(GROUP);

# Open new file and print the hash dump with p() subroutine.
open(FILE, '>', $backup_group) or die "Unable to write $backup_group: $!\n";
print FILE p(%unix_user);
close(FILE);
