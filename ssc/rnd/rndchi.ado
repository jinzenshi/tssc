*!version 1.1.1  2000 Joseph Hilbe  /Thomas Steichen added noncentrality feature 17May00* version 1.0.0  1993 Joseph Hilbe                            (sg44: STB-28)* Chi-square distribution random number generator (optional noncentral)* Example: rndchi 1000 4 3 [set obs 1000;  4 is the degrees of freedom;*                           3 is the noncentrality ]program define rndchi    version 3.1    set type double    cap drop xc    qui     {        local cases `1'        set obs `cases'        mac shift        local df `1'mac shiftlocal lambda `1'if "`lambda'" != "" {     if `lambda' < 0 {        di in re "noncentrality must be non-negative"        exit 125    }    local labl = "noncentral "    local delta = sqrt(2 * `lambda' / `df') }else { local delta = 0 }        tempvar ran1        noi di in gr "( Generating " _c        local i=1        gen `ran1'=0        while `i'<=`df'  {replace `ran1' = `ran1'+ (invnorm(uniform()) + `delta')^2            local i=`i'+1            noi di in gr "." _c         }        gen xc = `ran1'        noi di in gr " )"        noi di in bl "Variable " in ye "xc " in bl "created."lab var xc "`labl'Chi-square random variable"        set type float    }end