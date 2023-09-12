// draw shop layout
var w = room_width;
var h = room_height;

var title_down = 512;
var text_down = 1024;
var v_separation = 240;
var h_separation = 384;
set_text(c_white, f_title, fa_right, fa_center);
draw_text(w - h_separation, v_separation, string(global.coins));
set_text(c_white, f_menu, fa_right, fa_center);