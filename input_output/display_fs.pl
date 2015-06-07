#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my $varpath='/home/behemoth';

# get output of df -k
open(MY_DF, " df -k |") or die "$0: couldn't get df: $!";

while(<MY_DF>)
{
    chomp;
    if (/^\/dev/) {
        my @myrec = split(" ", $_);
        # convert every data into MB
        my $free = int($myrec[3]/1024);
        # save directory fields
        my $fsname = $myrec[5];
        # replaced / with _
        $fsname =~ s/\//_/g;

        # Create logfile
        my $logname = 'df'.$fsname.'.log';
        open(MY_LOG, '>', "$varpath/$logname") or die "Err. open $logname:$0";
        print MY_LOG "$free MB\n";
        close(MY_LOG);

        say "$logname saved: $varpath/$logname";
    }
}

close(MY_DF);
