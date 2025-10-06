# BignCr.pl v 0.00 2010/07/05 by tDB (CQB00260@nifty.ne.jp)
#
use Math::BigInt;
#
sub bigkaizyou{my $x=shift;
    if ($x<2) {return 1;} 
    else {return Math::BigInt::bmul($x,bigkaizyou($x-1));}}
sub bignPr{my $n=shift; my $r=shift;
    if ($r<1) {return 1;}
    else {my $nn=sprintf("%s",bignPr($n-1,$r-1)); return Math::BigInt::bmul("$n",$nn);}}
sub bignCr{my $n=shift; my $r=shift;
    if ($r<1) {return 1;}
    else {my $nn=sprintf("%s",bignCr($n-1,$r-1));
      my $nnn=sprintf("%s",Math::BigInt::bmul($n,$nn));
      return Math::BigInt::bdiv($nnn,$r);}}
1;
#
