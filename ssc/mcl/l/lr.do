* Logistic Regression (Logan 1983: 333)use logangen strata=_nexpand 5sort stratagen respfact=mod(_n-1,5)+1gen didep=(occ==respfact)quietly replace occ=respfactxi: clogit didep i.occ i.occ|black i.occ|educ, strata(strata)