drop if stfips == 72//puerto rico
drop if stfips == 11//district of columbia they arent states so they have been dropped
drop medical 
drop recreational

gen medical = 0
replace medical = 1 if stfips == 6 & year >= 2000//california
replace medical = 1 if stfips == 41 & year >= 2000//oregon
replace medical = 1 if stfips == 2 & year >= 2000//alaska
replace medical = 1 if stfips == 53 & year >= 2000//washington
replace medical = 1 if stfips == 23 & year >= 2000//Maine
replace medical = 1 if stfips == 15 & year >= 2000//Hawaii
replace medical = 1 if stfips == 32 & year >= 2000//Nevada
replace medical = 1 if stfips == 8 & year >= 2000//Colorado
replace medical = 1 if stfips == 50 & year >= 2004//Vermont
replace medical = 1 if stfips == 30 & year >= 2004//Montana
replace medical = 1 if stfips == 44 & year >= 2006//Rhode Island
replace medical = 1 if stfips == 35 & year >= 2007//New Mexico
replace medical = 1 if stfips == 26 & year >= 2008//Michigan
replace medical = 1 if stfips == 34 & year >= 2010//New Jersey
replace medical = 1 if stfips == 4 & year >= 2010//Arizona
replace medical = 1 if stfips == 10 & year >= 2011//Delaware
replace medical = 1 if stfips == 9 & year >= 2012//Connecticut
replace medical = 1 if stfips == 25 & year >= 2012//Massachusetts
replace medical = 1 if stfips == 17 & year >= 2013//Illinois
replace medical = 1 if stfips == 33 & year >= 2013//New Hampshire
replace medical = 1 if stfips == 24 & year >= 2014//Maryland
replace medical = 1 if stfips == 36 & year >= 2014//New York
replace medical = 1 if stfips == 27 & year >= 2014//Minnesota
replace medical = 1 if stfips == 42 & year >= 2016//Pennsylvania
replace medical = 1 if stfips == 39 & year >= 2016//Ohio
replace medical = 1 if stfips == 38 & year >= 2016//North Dakota
replace medical = 1 if stfips == 5 & year >= 2016//Arkansas

gen legal = 0
replace legal = 1 if stfips == 8 & year >= 2012
replace legal = 1 if stfips == 53 & year >= 2012
replace legal = 1 if stfips == 2 & year >= 2014
replace legal = 1 if stfips == 41 & year >= 2014
replace legal = 1 if stfips == 6 & year >= 2016
replace legal = 1 if stfips == 32 & year >= 2016
replace legal = 1 if stfips == 23 & year >= 2016
replace legal = 1 if stfips == 25 & year >= 2016



gen hard = 0
replace hard = 1 if sub1 == 3
replace hard = 1 if sub1 == 5
replace hard = 1 if sub1 == 7
replace hard = 1 if sub1 == 8
replace hard = 1 if sub1 == 9
replace hard = 1 if sub1 == 10
replace hard = 1 if sub1 == 11
replace hard = 1 if sub1 == 12
replace hard = 1 if sub1 == 13
replace hard = 1 if sub1 == 14
replace hard = 1 if sub1 == 15
replace hard = 1 if sub1 == 16
replace hard = 1 if sub1 == 17
replace hard = 1 if sub1 == 18
replace hard = 1 if sub1 == 6
replace hard = 1 if sub1 == 20

gen alcohol = 0
replace alcohol = 1 if sub1 == 2

gen weed = 0
replace weed = 1 if sub1 == 4

