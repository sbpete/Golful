draw_set_alpha(alpha);

// draw coin icon
draw_self();

// draw ui number
var sep = 128;
var v_separation = lengthdir_x(sep, -global.z);
var h_separation = lengthdir_y(sep, -global.z);
set_text(c_white, f_title, fa_right, fa_center);
draw_text_transformed(x + h_separation, y + v_separation, string(global.coins), 1, 1, -global.z);
set_text(c_white, f_menu, fa_right, fa_center);

draw_set_alpha(1);