#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Net::FTP;

# open ftp connection
my $ftp = Net::FTP->new("ftp.cpan.org") or die "Couldn't connect: $@\n";

$ftp->login("anonymous");
$ftp->cwd("/pub/CPAN");
$ftp->get("README.html");

# close connection
$ftp->close();
