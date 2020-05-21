/*********************************************
 * OPL 12.9.0.0 Model
 * Author: cmcai
 * Creation Date: 2020年5月21日 at 下午4:10:28
 *********************************************/
int n = 5;
int p[1..n] = [3, 2, 4, 5, 4];
int T = 6;
int k = (sum(i in 1..n) p[i]) div T;
int M = 1000;

dvar boolean x[1..n][1..n];
dvar boolean y[1..n];

minimize sum(j in 1..n) y[j];
subject to {
	forall (i in 1..n)
	  sum(j in 1..n) x[i][j] == 1;
	forall (j in 1..n)
	  sum(i in 1..n) x[i][j] * p[j] <= T * y[j];
	forall (j in 1..k) y[j] == 1;
	forall (j in k..n-1) y[j] >= y[j+1];
	forall (j in 1..n)
	  sum(i in 1..n) x[i][j] >= y[j];
	forall (j in 1..n)
	  sum(i in 1..n) x[i][j] <= M * y[j];
}

