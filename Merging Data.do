foreach m in 10 11 12 14 15 {
use "D:\Homework Final Semester\Causal Inference\Final Project\Project Data\Actual Data\tedsa_20`m'", clear

foreach v of var * {
	rename `v' `=lower("`v'")'
}
save "D:\Homework Final Semester\Causal Inference\Final Project\Project Data\Actual Data\tedsa_20`m'", replace

}

foreach m in 10 11 12 13 14 15 16{
append using "D:\Homework Final Semester\Causal Inference\Final Project\Project Data\Actual Data\tedsa_20`m'", force
}
