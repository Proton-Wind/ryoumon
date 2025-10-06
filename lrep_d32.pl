open(FHNDL,">./lrep_d32.dta");
require 'emath.pl';
$x=4.9; $y=90*($x)**-1; if ($y!=0 && abs($y)<0.0001) {$y=sprintf("%f",$y);} printf FHNDL "%f\n",$y; 
close(FHNDL);
