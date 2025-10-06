open(FHNDL,">./lrep_d30.dta");
require 'emath.pl';
$x=6; $y=90*($x)**-1; if ($y!=0 && abs($y)<0.0001) {$y=sprintf("%f",$y);} printf FHNDL "%f\n",$y; 
close(FHNDL);
