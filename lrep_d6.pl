open(FHNDL,">./lrep_d6.dta");
require 'emath.pl';
$oldx=$x=0;$oldy=5*sin(2*$pi*($x)/4);$orgdx=$dx=.05;printf FHNDL"(%f,%f)",$x,$oldy;
for($x=0;$x<5;$x+=.05){printf FHNDL"(%f,%f)",$x,5*sin(2*$pi*($x)/4)};$x=5;printf FHNDL"(%f,%f)",$x,5*sin(2*$pi*($x)/4);
close(FHNDL);
