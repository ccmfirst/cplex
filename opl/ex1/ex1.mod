/*********************************************
 * OPL 12.9.0.0 Model
 * Author: cmcai
 * Creation Date: 2020年5月21日 at 下午3:30:37
 *********************************************/
dvar int+ x;
dvar int+ y;
minimize 2 * x + 3 * y;
subject to{
	2 * x + 3 * y >= 20;
	x + y >= 10;
}