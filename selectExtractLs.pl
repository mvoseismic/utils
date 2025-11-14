#!/usr/bin/env perl
#
#  Extracts L events from select.out that has L and LV events
#  usage: cat select.out | selectExtractLs.pl
#
# R.C. Stewart 2025-11-14

use strict;
use warnings;

my $go = 0;

foreach my $line ( <STDIN> ) {

    chomp $line;
    if( $line =~ /1$/ ){

        my $evType = substr( $line, 21, 2 );

        if( $evType eq 'L ' ){
            $go = 1;
        } else {
            $go = 0;
        }

    }

    if( $go == 1 ){
        print $line, "\n";
    }

}
