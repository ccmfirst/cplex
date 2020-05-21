/*********************************************
 * OPL 12.9.0.0 Model
 * Author: cmcai
 * Creation Date: 2020年5月21日 at 下午3:42:19
 *********************************************/
int n = 4;
int C = 13;
int p[1..4] = [12, 11, 9, 8];
int w[1..4] = [8, 6, 4, 3];

dvar boolean x[1..n];

maximize sum(j in 1..n) p[j] * x[j];
subject to {
	sum(j in 1..n) w[j] * x[j] <= C;
}