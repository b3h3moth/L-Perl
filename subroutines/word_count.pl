#!/usr/bin/env perl
use strict;
use warnings;

run(\@ARGV);

sub run {
    my $argv = shift;
    my @counts;

    for my $file ( @$argv ) {
        my $count = -1;
        eval {
            $count = word_count($file);
            1;
        } or warn "$@";

        push @counts, {
            file => $file,
            word_count => $count,
        };
    }

    for my $result (@counts) {
        printf "%s: %d words\n", $result->{file}, $result->{word_count};
    }
}

sub word_count {
    my $file = shift;
    my %words;

    open my $fh, '<', $file
        or die "Cannot open '$file': $!";

    while (my $line = <$fh>) {
        my @words = split ' ', $line;
        $words{ $_ } += 1 for @words;
    }

    close $fh;

    my $word_count;
    $word_count += $_ for values %words;
    return $word_count;
}
