open(FHNDL,">./lrep_d4.dta");
require 'emath.pl';
$oldx=$x=-2;$oldy=0.1*cos(2*$pi*($x)/4);$orgdx=$dx=.05;printf FHNDL"(%f,%f)",$x,$oldy;
for($x=-2;$x<5;$x+=.05){printf FHNDL"(%f,%f)",$x,0.1*cos(2*$pi*($x)/4)};$x=5;printf FHNDL"(%f,%f)",$x,0.1*cos(2*$pi*($x)/4);
close(FHNDL);
