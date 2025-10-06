open(FHNDL,">./lrep_d7.dta");
require 'emath.pl';
$y=(6.666667+15.000000)*0.5; printf FHNDL"%f\n",$y; 
close(FHNDL);
