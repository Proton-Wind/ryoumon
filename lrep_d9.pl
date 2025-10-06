open(FHNDL,">./lrep_d9.dta");
require 'emath.pl';
$oldx=$x=3.75;$oldy=90*($x)**-1;$orgdx=$dx=0.08333;printf FHNDL"(%f,%f)",$x,$oldy;
for($x=3.75;$x<6;$x+=0.08333){if ($x>6) {$x=6}$y=90*($x)**-1;while (abs($y-$oldy)>$orgdx){$ddx=$dx/2;if ($ddx>0.0001) {$dx=$ddx;$x=$oldx+$dx;if($x>6){$x=6}$y=90*($x)**-1;}else{$x=$oldx+$dx;if($x>6){$x=6}$y=90*($x)**-1;last;}}printf FHNDL"(%f,%f)",$x,$y;$oldx=$x;$oldy=$y;$dx=$orgdx;};$x=6;printf FHNDL"(%f,%f)",$x,90*($x)**-1;
close(FHNDL);
