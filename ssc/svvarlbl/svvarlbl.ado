*! 1.0.0 DEMW 29 NOV 1999* This program outputs the variable labels* And can save the output to a do-file which you can* then use to label other variables in another dataset* Correct syntax => svvarlbl varlist [using filename] [, replace]program define svvarlbl        version 6        syntax [varlist] [using/] [, replace]        tokenize `varlist'        if "`replace'" != "" { local using `"`using', replace"' }        if `"`using'"' != `""' {                local logfile : log                local logfile = lower("`logfile'")                if "`logfile'" != "" {                        di in bl /*                         */ "Note: log `logfile' suspended for -svvarlbl-"                        log close }                cap log using `using'       	        if _rc{	                local rc = _rc                        local pwd:pwd                        local pwd = lower("`pwd'")                        if "`logfile'" != "" {                	        log using `logfile', append                        	di in bl /*			        */"Note: log `logfile' resumed after error in-svvarlbl-"	                }                 dis in red "File `pwd'\\`using' already exists"        	exit `rc' 		                }        }        local i = 1        while "``i''" != "" {                loc vlbl : variable label ``i''                dis `" cap label variable ``i'' "`vlbl'""'                local i = `i' + 1        }        if `"`using'"' != `""' { log close }        if "`logfile'" != "" {                log using `logfile', append                di in bl _n "Note: log `logfile' resumed after -svvarlbl-"        }end