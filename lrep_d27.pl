open(FHNDL,">./lrep_d27.dta");
require 'emath.pl';
$x=1.11; $y=16*($x)**-1*5/3; if ($y!=0 && abs($y)<0.0001) {$y=sprintf("%f",$y);} printf FHNDL "%f\n",$y; 
close(FHNDL);
