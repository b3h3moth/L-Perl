#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my $varpath='/home/behemoth';
my $logname = 'df.log';

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
        #$fsname =~ s/\//_/g;

        # Create logfile
        #my $logname = 'df'.$fsname.'.log';
        open(MY_LOG, '>>', "$varpath/$logname") 
            or die "Can't open open $logname: $!";
        
        say MY_LOG "$fsname $free MB";
        close(MY_LOG);

    }
}

close(MY_DF);
        
say "$logname saved: $varpath/$logname";
