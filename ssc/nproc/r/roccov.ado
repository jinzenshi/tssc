*!version 1.0.1 18sep1996program define roccov version 4.0 local varlist "req ex" local options "BY(string) AUC1(real 0) AUC2(real 0) pause *" parse "`*'" parse "`varlist'",parse(" ") if "`by'"==""{     di in red "You must specify the Grouping Variable"     exit 198 } confirm var `by' preserve tempvar i X1 X2 Y1 Y2 V101 V102 V011 V012 quietly{   keep `1' `2' `by'   keep if `1'~=. & `by'~=.   sort `by'   if `by'[_N]~=2{      recode `by' 0=2      sort `by'   }   if `by'[_N]~=2{      noisily di in red "2 Groups required coded as 1,2 or 0,1"      exit 198   }   gen `X1'=.   gen `X2'=.   gen `Y1'=.   gen `Y2'=.   replace `X1'=`1' if `by'==1   replace `Y1'=`1' if `by'==2   replace `X2'=`2' if `by'==1   replace `Y2'=`2' if `by'==2   gen `V101'=.   gen `V011'=.   gen `V102'=.   gen `V012'=.   local i=1   while `i'<_N+1{        tempvar k1 k2 S1 S2        if `by'[`i']==1{        gen `k1'=`X1'[`i']        gen `k2'=`X2'[`i']        gen `S1'=1 if `Y1'<`k1'        replace `S1'=.5 if `Y1'==`k1'        replace `S1'=0 if `Y1'>`k1'        gen `S2'=1 if `Y2'<`k2'        replace `S2'=.5 if `Y2'==`k2'        replace `S2'=0 if `Y2'>`k2'        replace `S1'=. if `by'==1        replace `S2'=. if `by'==1        replace `S1'=sum(`S1')        replace `S2'=sum(`S2')        replace `V101'=`S2'[_N] if _n==`i'        replace `V102'=`S1'[_N] if _n==`i'        }        else if `by'[`i']==2{        gen `k1'=`Y1'[`i']        gen `k2'=`Y2'[`i']        gen `S1'=1 if `X1'>`k1'        replace `S1'=.5 if `X1'==`k1'        replace `S1'=0 if `X1'<`k1'        replace `S1'=. if `X1'==.        gen `S2'=1 if `X2'>`k2'        replace `S2'=.5 if `X2'==`k2'        replace `S2'=0 if `X2'<`k2'        replace `S1'=. if `by'==2        replace `S2'=. if `by'==2        replace `S1'=sum(`S1')        replace `S2'=sum(`S2')        replace `V011'=`S1'[_N] if _n==`i'        replace `V012'=`S2'[_N] if _n==`i'        }     drop `k1' `k2' `S1' `S2'     local i=`i'+1   }   tempvar np nn S10 S01   replace `V101'=. if `by'==2   replace `V102'=. if `by'==2   replace `V011'=. if `by'==1   replace `V012'=. if `by'==1   gen `np'=1 if `by'==1   replace `np'=sum(`np')   gen `nn'=1 if `by'==2   replace `nn'=sum(`nn')   replace `V101'=(1/`nn'[_N])*`V101'   replace `V102'=(1/`nn'[_N])*`V102'   replace `V011'=(1/`np'[_N])*`V011'   replace `V012'=(1/`np'[_N])*`V012'   gen `S10'=(`V101'-`auc1')*(`V102'-`auc2')   gen `S01'=(`V011'-`auc1')*(`V012'-`auc2')   replace `S10'=sum(`S10')   replace `S01'=sum(`S01')   scalar S10=(1/(`np'[_N]-1))*`S10'[_N]   scalar S01=(1/(`nn'[_N]-1))*`S01'[_N]   scalar COV=((1/`np'[_N])*S10)+((1/`nn'[_N])*S01)   * noisily di in gr "The covariance of the AUCs of /*   */ " "$Sroc_v1" " and " "${Sroc_v$counter}" " =" in ye COV   global Scov1_$counter = COV   drop `np' `nn' `V101' `V102' `V011' `V012' `S10' `S01'   }end