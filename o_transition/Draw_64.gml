// if not off
if (mode != TRANS_MODE.OFF) {
	// draw circle
	draw_set_color(c_black);
	draw_circle(w/2, h/2, percent*(h/2), false);
}

draw_set_color(c_white);