*! version 1.1.0  14may1998  statalistprogram define reglike        version 5.0        local options "Command(string) DF(string)"        parse "`*'"        if "$S_E_cmd"!="regress" { error 301 }        global S_E_ll = -0.5*_result(1)*(1 + log(2*_pi*_result(4)/_result(1)))        global S_E_nobs = _result(1)        if "`df'"=="" {                global S_E_mdf = _result(3)        }        else {                confirm integer number `df'                global S_E_mdf `df'        }        if "`command'"!="" {                global S_E_cmd "`command'"        }        di _n in gr "log likelihood = " in ye %10.0g $S_E_llendexit