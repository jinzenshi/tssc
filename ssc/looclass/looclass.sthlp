{smcl}
{* *! version 2.0.0 06Sep2018}{...}
{* *! version 1.1.0 15Nov2017}{...}
{* *! version 1.0.1 10OOct2017}{...}
{* *! version 1.0.0 20June2015}{...}

{title:Title}

{p2colset 5 17 21 2}{...}
{p2col:{hi:looclass} {hline 2}} Classification statistics for leave-one-out cross-validation of binary outcomes  {p_end}
{p2colreset}{...}


{marker syntax}{...}
{title:Syntax}


{p 8 17 2}
{cmd:looclass} {depvar} {indepvars} {ifin} [{it:{help weight}}]
{cmd:,} {opt mod:el(str)} [{opt cut:off(#)} {opt sa:ve} {opt fig:ure} {it:model_options}]



{synoptset 19 tabbed}{...}
{synopthdr}
{synoptline}
{synopt :{opt mod:el(string)}}{cmd:required}. Choice of model used for classification includes "logit", "probit", "{search randomforest:randomforest}", "{search boost:boost}", or "{search svmachines:svmachines}"{p_end}
{synopt :{opt cut:off(#)}}positive outcome threshold used in classification tables; default is {cmd:cutoff(0.5)}{p_end}
{synopt:{opt sa:ve}}saves observation-level predictions for full and test data{p_end}
{synopt:{opt fig:ure}}produces a graph presenting ROC curves for the full and test data{p_end}
{synopt:{it:model_options}}allows all available options for the given model specified in the {cmd: model()} option {p_end}
{synoptline}
{p 4 6 2} {it:indepvars} may contain factor variables in logit, probit and {help svmachines} models; see {help fvvarlist}.{p_end}
{marker weight}{...}
{p 4 6 2}{opt fweight}s, {opt iweight}s, and {opt pweight}s are allowed for logit and probit models; see {help weight}.{p_end}


{p 4 6 2}
{p2colreset}{...}				
	
{title:Description}

{pstd}
{cmd:looclass} performs leave-one-out cross-validation for regression models with a binary outcome and then produces classification measures to assist in determining 
the error rate (or conversely, the accuracy) of a prediction (classification) model. {p_end}  

{pstd}
Leave-one-out cross-validation is simply {it:n}-fold cross-validation, where {it:n} is the number of observations in the dataset. Each observation in turn is 
left out, and the model is estimated for all remaining observations. The predicted value is then calculated for the one hold-out observation, 
and the accuracy is determined as success or failure in predicting the outcome for that observation (see Chapter 5 in Witten et al. 2011). The results of all {it:n} 
predictions are used to calculate the final error estimates (accuracy) displayed in the classification table and ROC curves generated by {cmd:looclass}. 
 

{title:Options}

{p 4 8 2}
{cmd:model(}{it:string}{cmd:)} choice of model used for classification. The available models are "logit", "probit", "randomforest", 
"boost", and "svmachines" (the {search randomforest:randomforest}, {search boost:boost}, and {search svmachines:svmachines} packages must
be downloaded for these modeling approaches to be available).

{p 4 8 2}
{cmd:cutoff(}{it:#}{cmd:)} specifies the value for determining whether an observation has a predicted 
positive outcome in the classification tables.  An observation is classified as positive if its
predicted probability is {ul:>} {it:#}.  The default is 0.5.  
		
{p 4 8 2}
{cmd:save} generates two variables, "full" and "test", that contain the predictions estimated for the full and test data, respectively.
		
{p 4 8 2}
{cmd:figure} produces a graph presenting ROC curves for the full data and test data.

{p 4 8 2}
{cmd:{it:model_options}} specifies all available options for {help probit}, {help logit}, {help randomforest}, {help boost}, and {help svmachines} when the chosen model is 
specified in the {cmd:model()} option.
	

{title:Examples}

{hline}

{pstd}Setup{p_end}
{phang2}{bf:{stata "webuse lbw, clear":. webuse lbw, clear}}{p_end}

{pstd}
Leave-one-out cross validation using logistic regression and displaying the ROC curves  {p_end}
{phang2}{bf:{stata "looclass low age lwt i.race smoke ptl ht ui, model(logit) fig":. looclass low age lwt i.race smoke ptl ht ui, model(logit) fig}}{p_end}

{pstd}
Same as above but specifying randomforest as the estimation model (note that "race" is not specified with the "i." prefix as above) {p_end}
{phang2}{bf:{stata "looclass low age lwt race smoke ptl ht ui, model(randomforest) fig":. looclass low age lwt race smoke ptl ht ui, model(randomforest) fig}}{p_end}

{pstd}
Same as the first example, but saving the predictions for the full and test data after restricting the sample to those <30 years{p_end}
{phang2}{bf:{stata "looclass low age lwt i.race smoke ptl ht ui if age<30, model(logit) fig save":. looclass low age lwt i.race smoke ptl ht ui if age<30, model(logit) fig save}}{p_end}

{pstd}
Specifying an svmachines model, and saving the predictions for the full and test data {p_end}
{phang2}{bf:{stata "looclass low age lwt i.race smoke ptl ht ui, model(svmachines) fig save":. looclass low age lwt i.race smoke ptl ht ui, model(svmachines) fig save}}{p_end}

{pstd}
Specifying a boosted regression model, and saving the predictions for the full and test data (note: {cmd:boost} is specified with maxiter = 100 to speed it up) {p_end}
{phang2}{bf:{stata "looclass low age lwt race smoke ptl ht ui, model(boost) maxiter(100) fig save":. looclass low age lwt race smoke ptl ht ui, model(boost) maxiter(100) fig save}}{p_end}


{pstd}
Use {cmd:cutpt} (downloadable from SSC) to estimate the "optimal" cutpoint on both the full and test data{p_end}
{phang2}{bf:{stata "cutpt low full, youden":. cutpt low full, youden}}{p_end}
{phang2}{bf:{stata "cutpt low test, youden":. cutpt low test, youden}}{p_end}

{hline}



{title:Stored results}

{pstd}
{cmd:looclass} stores the following in {cmd:r()}:

{synoptset 15 tabbed}{...}
{p2col 5 15 19 2: Scalars}{p_end}
{synopt:{cmd:r(P_corr_1)}}percent correctly classified - full{p_end}
{synopt:{cmd:r(P_p1_1)}}sensitivity - full{p_end}
{synopt:{cmd:r(P_n0_1)}}specificity - full{p_end}
{synopt:{cmd:r(P_p0_1)}}false-positive rate given true negative - full{p_end}
{synopt:{cmd:r(P_n1_1)}}false-negative rate given true positive - full{p_end}
{synopt:{cmd:r(P_1p_1)}}positive predictive value - full{p_end}
{synopt:{cmd:r(P_0n_1)}}negative predictive value - full{p_end}
{synopt:{cmd:r(P_0p_1)}}false-positive rate given classified positive - full{p_end}
{synopt:{cmd:r(P_1n_1)}}false-negative rate given classified negative - full{p_end}
{synopt:{cmd:r(roc1)}}ROC curve - full{p_end}
{synopt:{cmd:r(P_corr_2)}}percent correctly classified - test{p_end}
{synopt:{cmd:r(P_p1_2)}}sensitivity - test{p_end}
{synopt:{cmd:r(P_n0_2)}}specificity - test{p_end}
{synopt:{cmd:r(P_p0_2)}}false-positive rate given true negative - test{p_end}
{synopt:{cmd:r(P_n1_2)}}false-negative rate given true positive - test{p_end}
{synopt:{cmd:r(P_1p_2)}}positive predictive value - test{p_end}
{synopt:{cmd:r(P_0n_2)}}negative predictive value - test{p_end}
{synopt:{cmd:r(P_0p_2)}}false-positive rate given classified positive - test{p_end}
{synopt:{cmd:r(P_1n_2)}}false-negative rate given classified negative - test{p_end}
{synopt:{cmd:r(roc2)}}ROC curve - test{p_end}
{synopt:{cmd:r(rocp)}}p-value for chi-squared test between full and test ROC curves{p_end}
{p2colreset}{...}


{title:References}

{p 4 8 2}
Witten, I. H., E. Frank, and M. A. Hall. (2011) {it:Data Mining: Practical Machine Learning Tools and Techniques (3 ed.)}. Boston: Elsevier Press. {p_end}

{p 4 8 2}
Linden A. (2006) Measuring diagnostic and predictive accuracy in disease management: an introduction to receiver operating characteristic (ROC) analysis. 
{it:Journal of Evaluation in Clinical Practice} 12: 132-139.{p_end}


{title:Acknowledgments}

{p 4 4 2}
William McClain identified a bug that occured when using the [if][in] syntax due to not sorting the data before running the LOO loop. {p_end}



{marker citation}{title:Citation of {cmd:looclass}}

{p 4 8 2}{cmd:looclass} is not an official Stata command. It is a free contribution
to the research community, like a paper. Please cite it as such: {p_end}

{p 4 8 2}
Linden, Ariel (2015). looclass: Stata module for generating classification statistics of Leave-One-Out cross-validation for binary outcomes. 
{browse "http://ideas.repec.org/c/boc/bocode/s458032.html":http://ideas.repec.org/c/boc/bocode/s458032.html}
{p_end}



{title:Author}

{p 4 8 2}	Ariel Linden{p_end}
{p 4 8 2}	President, Linden Consulting Group, LLC{p_end}
{p 4 8 2}{browse "mailto:alinden@lindenconsulting.org":alinden@lindenconsulting.org}{p_end}
{p 4 8 2}{browse "http://www.lindenconsulting.org"}{p_end}


         

{title:Also see}

{p 4 8 2} Online: {helpb probit}, {helpb logit}, {helpb estat classification}, {helpb roccomp}, {helpb randomforest} (if installed),
{helpb boost} (if installed), {helpb svmachines} (if installed), {helpb kfoldclass} (if installed), {helpb cutpt} (if installed){p_end}

