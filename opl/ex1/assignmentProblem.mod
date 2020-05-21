/*********************************************
 * OPL 12.9.0.0 Model
 * Author: cmcai
 * Creation Date: 2020年5月21日 at 下午3:48:04
 *********************************************/
int n = ...;
range r = 1..n;
int c[r][r] = ...; 
dvar boolean x[r][r];
 
 minimize sum(i in r) 
 sum(j in r) x[i][j] * c[i][j];
 
subject to {
	forall (j in r) 
		sum(i in r) x[i][j] == 1;
	forall (i in r) 
		sum(j in r) x[i][j] == 1;
}