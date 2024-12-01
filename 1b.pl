#!/usr/bin/env perl
use v5.40;
use PDL;
use PDL::NiceSlice;
my @arr;
while(<>){
    chomp;
    push @arr, [split ' '];
}
my $lists=pdl([@arr]);
say +($lists((0))*(!($lists(*1,(0))-$lists((1))))->sumover)->sumover;
