/* Testing out dropping states with missing values
drop if stfips == 45 | stfips == 28 | stfips == 41 | stfips == 13
In order above: South Carolina, Mississippi, Oregon, and Georgia

Only oregon is in the medical group, and only oregon is in the recreational
*/

reg opium i.legal i.medical i.year i.stfips i.race4 i.age, robust 
est store A

reg opium i.legal i.medical i.year i.stfips i.race4 i.age if insurance == 0, robust 
est store B

reg opium i.legal i.medical i.year i.stfips i.race4 i.age if insurance == 1, robust 
est store C

esttab A B C using "table1.rtf", varwidth(12) modelwidth(10) cells(b(star fmt(a3)) se(par fmt(a3)) ) label star(* 0.10 ** 0.05 *** 0.01) nocons stat(r2 N)  replace  

esttab A B C using "table1.rtf", keep(legal=0 legal=1 medical=0 medical=1) varwidth(12) modelwidth(10) cells(b(star fmt(a3)) se(par fmt(a3)) ) label star(* 0.10 ** 0.05 *** 0.01) nocons stat(r2 N)  replace  

/* looking at only those sentenced
reg herflg i.legal i.medical i.year i.stfips if psource == 7, robust 
//this model looks at heroin usage.
//reg hard i.legal i.medical i.year i.stfips if psource == 7, robust 
est store A
reg opsynflg i.legal i.medical i.year i.stfips if psource == 7, robust 
est store B
reg hard i.legal i.medical i.year i.stfips if psource == 7, robust 
est store C
reg weed i.legal i.medical i.year i.stfips if psource == 7, robust 
est store D
esttab A B C D using "table1.rtf", varwidth(12) modelwidth(10) cells(b(star fmt(a3)) se(par fmt(a3)) ) label star(* 0.10 ** 0.05 *** 0.01) nocons stat(r2 N)  replace */
gen white = 0
replace white = 1 if race == 5

gen black = 0
replace black = 1 if race == 4

replace gender = gender - 1

est clear
estpost ttest gender, by(legal)
est store A
estpost ttest white, by(legal)
est store B
estpost ttest black, by(legal)
est store C
estpost ttest opium, by(legal)
est store D




esttab A B C D using "table1.rtf", nonumber cells(mu_1(label(mean)) sd(label(sd)))  label star(* 0.10 ** 0.05 *** 0.01) noobs replace



/*
replace race = 7 if race == 20
replace race = 6 if race == 13
replace race = 8 if race == 21
replace race = 9 if race == 23
reg opium i.legal i.medical i.year i.stfips i.race i.age, robust


gen insurance = 1
replace insurance = . if hlthins == 0
replace insurance = 0 if hlthins == 4
*/


