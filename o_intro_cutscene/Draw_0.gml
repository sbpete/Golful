// draw prompt
var fade_inc = 0.01;
var v_border = 64;

if (fade_text) {
	alpha += fade_inc;
}
draw_set_alpha(alpha);
set_text(c_black, f_text_small, fa_center, fa_center);
draw_text_color(room_width/2, room_height - v_border, "press any button",
	c_black, c_black, c_black, c_black, alpha * 0.8)
draw_set_alpha(1);