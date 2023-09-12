// draw settings menu
var w = room_width;
var h = room_height;
var title_down = 512;
var text_down = 1024;
var v_separation = 256;
var h_separation = 256;

set_text(c_white, f_title, fa_center, fa_center);
draw_text(w/2, title_down, "settings");
set_text(c_white, f_menu, fa_right, fa_center);
draw_text(w/2 - h_separation, text_down, "music volume");
draw_text(w/2 - h_separation, text_down + v_separation, "sfx volume");
draw_text(w/2 - h_separation, text_down + v_separation*2, "cursor size");
draw_text(w/2 - h_separation, text_down + v_separation*3, "fullscreen");
draw_text(w/2 - h_separation, text_down + v_separation*4, "angle assist");
draw_text(w/2 - h_separation, text_down + v_separation*5, "invert putt");