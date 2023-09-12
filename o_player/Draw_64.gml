// debug
if (global.debug) {
	set_text(c_white, f_text, fa_left, fa_top);
	draw_text(8, 8, "zfloor: " + string(zfloor)); // draw zfloor
	draw_text(8, 80, "z: " + string(z)); // draw current z val
	draw_text(8, 152, "z offset: " + string(z_offset)); // draw current z val
	set_text(c_white, f_text, fa_center, fa_center);
}