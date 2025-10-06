open(FHNDL,">./lrep_d5.dta");
require 'emath.pl';
$oldx=$x=0;$oldy=5*sin(2*$pi*($x)/2);$orgdx=$dx=.05;printf FHNDL"(%f,%f)",$x,$oldy;
for($x=0;$x<5;$x+=.05){printf FHNDL"(%f,%f)",$x,5*sin(2*$pi*($x)/2)};$x=5;printf FHNDL"(%f,%f)",$x,5*sin(2*$pi*($x)/2);
close(FHNDL);
