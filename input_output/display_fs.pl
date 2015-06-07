#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;


$varpath="/export/home/users/erikk/work/baselines/var";

# get output of df -k
open(MY_DF, " df -k |") or die "$0: couldn't get df: $!";
while(<MY_DF>)
{
        chop;
        if(/^\/dev\//)
        {
                @myrec = split(" ", $_);
                $free = int($myrec[3]/1024);
                #print "$myrec[5]: $myrec[4] $free MB free\n";
                $fsname = $myrec[5];
              $fsname =~ s/\//_/g;
                            $logname = "df_".$fsname.".log";
                                          open(MY_LOG, ">>$varpath/$logname")
                                                                or die "$0: problem opening file: $!";
                                                                          print MY_LOG "$free\n";
                                                                                        close(MY_LOG);
                                                                                                }
                                                                                            }
                                                                                            close(MY_DF);
                                                                                            # EOF
                                                                                            #
