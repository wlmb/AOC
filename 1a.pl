#!/usr/bin/env perl
use v5.40;
use PDL;
use PDL::NiceSlice;
my @arr;
while(<>){
    chomp;
    push @arr, [split ' '];
}
say +(pdl([@arr])->mv(1,0)->inplace->qsort->mv(0,1)*pdl(1,-1))->sumover->abs->sumover;
