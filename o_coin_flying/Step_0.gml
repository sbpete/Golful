// move to corner
var _amnt = 8;
x += (xTo - x)/_amnt;
y += (yTo - y)/_amnt;

// reach corner
if (distance_to_point(xTo, yTo) < 16) or (o_transition.percent > 0.9) {
	instance_destroy();	
	global.coins++;
	
	with (o_coin_UI) {
		var start_alpha = 2;
		alpha = start_alpha;	
	}
}