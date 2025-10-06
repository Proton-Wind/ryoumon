# nCr.pl v 0.00 2003/08/20 by tDB (CQB00260@nifty.ne.jp)
#
sub kaizyou{my $x=shift;
    if ($x<2) {return 1;} 
    else {return $x*kaizyou($x-1);}}
sub nPr{my $n=shift; my $r=shift;
    if ($r<1) {return 1;}
    else {return $n*nPr($n-1,$r-1);}}
sub nCr{my $n=shift; my $r=shift;
    if ($r<1) {return 1;}
    else {return $n*nCr($n-1,$r-1)/$r;}}
1;
#
