program define torats*! cfb v1.2.4 12dec2006 * cloned from ds* additions NJC 25 Nov 1998* corrected to generate non-SMCL logfile and Stata v6 syntax parsing* corrected to allow string variables in markout* 1.2.2 corrected for long varnames * could be enhanced to grab appropriate info from tsset!* 1.2.3 corrected for outfile touse per NJC* 1.2.4 updated to 8.2, nocase and replace options added        version 8.2        syntax [varlist] [if] [in] ,FILE(string) [noCASE REPLACE]                if "`replace'" == "replace" {        	local opt "replace"        }		tempvar touse		mark `touse' `if' `in' 		if "`case'" != "nocase" {			markout `touse' `eqnames' `varlist',strok		}		qui summ `touse', meanonly		local nobs=r(sum)        qui log using `file'.rat,`opt' text        di "* RATS PROGRAM BEGINS"        di "alloc `nobs'"        di "open data `file'.raw"        di "data(unit=data,org=obs) / $"        parse "`varlist'", parse(" ")        local i 1        local j 1        local l 0        while "``i''" != "" {                local type : type ``i''                if substr("`type'",1,3) != "str" {                        local outlist "`outlist' ``i''"                        local l = `l' + length("``i''") + 1                        di in gr "``i'' " _c                        local j=`j'+1                        if (`l'>72) {                         	local l 0                        	di " $ "                        	}                }                local i = `i' + 1        }        di        di "* ADD YOUR RATS CODE HERE"        qui log close        outfile `outlist' using "`file'.raw" if `touse', nolab `opt'                di _n "{col 10} RATS program: `file'.rat"        di "{col 10} Selected dataset contains `nobs' observations"        if "`case'" == "nocase" {        	di "{col 10} Casewise deletion not selected"        }        di "{col 10} Output file : `file'.raw" _nendexit