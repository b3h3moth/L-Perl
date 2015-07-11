#!/usr/bin/env perl
use warnings;
use strict;
use File::Temp 'tempfile';
use File::Spec;
use Data::Printer;


# Open /etc/group file, split each row, save group data into %unix_user hash,
# than print results with p() subroutine.

my %unix_user;

my $group_file = '/etc/group';

# Create a temporary file, and save it into /tmp
my $tmp_file;
die "I Cannot make filehandle: $!" unless( my $fh = tempfile() );
die "I Cannot open $tmp_file" unless( ($fh, $tmp_file) = tempfile() );

open(GROUP, '<', $group_file) or die "Unable to open $group_file: $!\n";

while (<GROUP>) {
  my ($group_name, $pass, $GID, @userlist) = split ':';
  $unix_user{$group_name} = [$group_name, $pass, $GID, @userlist];
}

close(GROUP);

# Open new file and print the hash dump with p() subroutine.
open(FILE, '>', $tmp_file) or die "Unable to write $tmp_file: $!\n";
print FILE p(%unix_user);
close(FILE);

# Print temporary file path
print "Hash dump of $group_file: $tmp_file\n";
