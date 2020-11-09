{smcl}
{* 2 November 2012}{...}
{hline}
help for {hi:missingplot} 
{hline}

{title:A plot to show patterns of missing values in a dataset}

{p 8 17 2}
{cmd:missingplot} 
[{it:varlist}] 
[{cmd:if} {it:exp}] [{cmd:in} {it:range}] 
[{cmd:,} 
{cmd:all} 
{cmd:labels}
{cmdab:var:iablenames}
{it:scatter_options}] 


{title:Description}

{p 4 4 2}{cmd:missingplot} gives a plot showing the incidence of missing
values in one or more variables in the current dataset. The horizontal
axis shows observation numbers; the vertical axis shows one or more
lines, one for each variable shown. Marker symbols show which
values are missing. 

{p 4 4 2}{cmd:missingplot} treats numeric and string
variables alike: what is common to both is whether the {cmd:missing()} 
function returns true. In the case of numeric variables no
distinction is made between system missing (.) and any extended missing
value .a ... .z. See {help missing} for a tutorial if desired. 
Users wishing to select classes of variables, for
example all numeric or all string variables, may wish to use first either 
{help ds} or {help findname} (if installed). 

{p 4 4 2}{cmd:missingplot} may be useful for seeing broad patterns in the
incidence of missing values, for example blocks of observations with
many or all missing values or variables with many or all missing values.
It may also be useful for quickly identifying fine structure or notable
detail in some instances. See also {help misstable} (Stata 11 up) and
{help nmissing} (if installed). 


{title:Remarks} 

{p 4 4 2}For a loosely similar plot, see Wilkinson (2005, p.487). Users
of this program knowing of references to interesting earlier or similar
work are encouraged to send references to the program author.

{p 4 4 2}The mechanics of the plot are that each variable in the plot is
represented by a single variable inside the program. There is currently
a limit of 20 variables being shown in any one graph. 


{title:Options}

{p 4 8 2}{cmd:all} specifies that all variables implied by {it:varlist}
should be plotted, regardless of whether they contain missing values.
The default of {cmd:missingplot} is to omit variables from the plot if
they have no missing values (in the observations selected, if either
{cmd:if} or {cmd:in} has been specified). Specifying {cmd:all} is more likely 
to trigger the limit of 20 variables shown. 

{p 4 8 2}{cmd:labels} specifies that marker labels be shown identifying
the observation number of each missing value. In practice this will work
best with a small number of missing values or a small dataset or both.
Note that as above marker labels are generated by repeated calls to
marker label options for each variable; thus if you wish to change away from the default
you would need to specify (e.g.) {cmd:mlabcolor(blue ..)}.  

{p 4 8 2}{cmd:variablenames} specifies that variable names only be shown
to identify variables. The default is to show variable labels if they
exist, and variable names otherwise. The value of this option is usually
to increase the space devoted to the graph itself. 

{p 4 8 2}{it:scatter_options} are options of {help scatter}. 


{title:Examples}

{p 4 8 2}{cmd:. webuse nlsw88, clear}{p_end}
{p 4 8 2}{cmd:. missingplot}{p_end}
{p 4 8 2}{cmd:. missingplot, var labels}{p_end}
{p 4 8 2}{cmd:. missingplot, var labels mlabcolor(blue ..)}


{title:Author} 

{p 4 4 2}Nicholas J. Cox, Durham University, U.K.{break}
n.j.cox@durham.ac.uk


{title:References} 

{p 4 8 2}
Cox, N.J. 1999. Numbers of missing and present values. 
{it:Stata Technical Bulletin} 49: 7{c -}8. 
(Software updates {it:Stata Technical Bulletin} 60: 2{c -}3; {it:Stata Journal} 
3:449 and 5:607) 

{p 4 8 2}
Cox, N.J. 2010. Finding variables. {it:Stata Journal} 10: 281{c -}296. 
(Software updates {it:Stata Journal} 10:691 and 12:167) 

{p 4 8 2}
Wilkinson, L. 2005. {it:The Language of Graphics.} New York: Springer.


{title:Also see} 

{p 4 8 2}On-line: help for {help misstable}, {help nmissing} (if
installed) 
