open(FHNDL,">./lrep_d20.dta");
require 'emath.pl';
for($x=1;$x>0;$x+=-.05){printf FHNDL"(%f,%f)",0.1*sin(6.28319*($x))+.1,$x};$x=0;printf FHNDL"(%f,%f)",0.1*sin(6.28319*($x))+.1,$x;
close(FHNDL);
