clear all
use "\\cnsdisk.austin.utexas.edu\home\jlh7459\Downloads\BraceroData.dta"

cap log close
log using "ps6Log.log", replace

g post = 0
replace post = 1 if year >= 1962
sum yearly_mex_frac if treated == 0 & post == 0
sum yearly_mex_frac if treated == 0 & post == 1
sum yearly_mex_frac if treated == 1 & post == 0
sum yearly_mex_frac if treated == 1 & post == 1

reg yearly_mex_frac treated##post, cluster(state)

ssc install binscatter
// plot the mean of yearly_mex_frac for each year
// connect a line through each point
// add lines at x = 1962 and x = l964
binscatter yearly_mex_frac year, discrete linetype(connect) xline(1962) xline(1964)

areg yearly_mex_frac ib1961.year##treated, a(state) cluster(state)

ssc install coefplot
// coef plot provided in class
coefplot ,vertical keep(*.year#1.treated) omit base rename(*.year#1.treated="") /// 
xlabel(,angle(45)) nolabels color(black) plotregion(color(white)) graphregion(color(white)) /// 
ytitle("Mexican Fraction of Seasonal Workers") xtitle("Year") xline(8 11, lpattern(dash)) /// 
level(95) ylabel(-0.6(.2)0.6) yscale(r(-.6,.6))

// --- realwage_hourly ---
sum realwage_hourly if treated == 0 & post == 0
sum realwage_hourly if treated == 0 & post == 1
sum realwage_hourly if treated == 1 & post == 0
sum realwage_hourly if treated == 1 & post == 1

reg realwage_hourly treated##post, cluster(state)

binscatter realwage_hourly year, discrete linetype(connect) xline(1962) xline(1964)

areg realwage_hourly ib1961.year##treated, a(state) cluster(state)

// tweak ylabel and scale
coefplot ,vertical keep(*.year#1.treated) omit base rename(*.year#1.treated="") /// 
xlabel(,angle(45)) nolabels color(black) plotregion(color(white)) graphregion(color(white)) /// 
ytitle("Real Hourly Wages") xtitle("Year") xline(8 11, lpattern(dash)) /// 
level(95) ylabel(-0.1(.05)0.1) yscale(r(-0.1, 0.1))

// --- domestic_seasonal ---
sum domestic_seasonal if treated == 0 & post == 0
sum domestic_seasonal if treated == 0 & post == 1
sum domestic_seasonal if treated == 1 & post == 0
sum domestic_seasonal if treated == 1 & post == 1

reg domestic_seasonal treated##post, cluster(state)

binscatter domestic_seasonal year, discrete linetype(connect) xline(1962) xline(1964)

areg domestic_seasonal ib1961.year##treated, a(state) cluster(state)

// tweak ylabel and scale again
coefplot ,vertical keep(*.year#1.treated) omit base rename(*.year#1.treated="") /// 
xlabel(,angle(45)) nolabels color(black) plotregion(color(white)) graphregion(color(white)) /// 
ytitle("Real Hourly Wages") xtitle("Year") xline(8 11, lpattern(dash)) /// 
level(95) ylabel(-10000(5000)10000) yscale(r(-10000, 10000))

reg tomatoes_total treated##post, cluster(state)
reg asparagus_total treated##post, cluster(state)

clear all
use "\\cnsdisk.austin.utexas.edu\home\jlh7459\Downloads\Tomatoes.dta"

binscatter tomato_mech year, by(state) linetype(connect)

cap log close
