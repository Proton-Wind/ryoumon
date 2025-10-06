open(FHNDL,">./lrep_d8.dta");
require 'emath.pl';
$oldx=$x=1.11;$oldy=16*($x)**-1*5/3;$orgdx=$dx=0.08333;printf FHNDL"(%f,%f)",$x,$oldy;
for($x=1.11;$x<4;$x+=0.08333){if ($x>4) {$x=4}$y=16*($x)**-1*5/3;while (abs($y-$oldy)>$orgdx){$ddx=$dx/2;if ($ddx>0.0001) {$dx=$ddx;$x=$oldx+$dx;if($x>4){$x=4}$y=16*($x)**-1*5/3;}else{$x=$oldx+$dx;if($x>4){$x=4}$y=16*($x)**-1*5/3;last;}}printf FHNDL"(%f,%f)",$x,$y;$oldx=$x;$oldy=$y;$dx=$orgdx;};$x=4;printf FHNDL"(%f,%f)",$x,16*($x)**-1*5/3;
close(FHNDL);
