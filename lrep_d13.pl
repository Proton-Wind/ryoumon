open(FHNDL,">./lrep_d13.dta");
require 'emath.pl';
$y=(300); if ($y!=0 && abs($y)<0.0001) {$y=sprintf("%f",$y);} printf FHNDL "%s\n",$y; 
close(FHNDL);
