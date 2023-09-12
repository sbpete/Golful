// draw wardrobe
var w = room_width;
var h = room_height;

var title_down = 672;
var text_down = 1024;
var v_separation = 256;
var h_separation = 256;
var col = make_color_rgb(158, 82, 82);
set_text(col, f_menu, fa_center, fa_center);
// draw hats unlocked
draw_text((w * 3/4) - 125, o_prop_sign.y, 
	string(array_length(o_game.hats_unlocked)) 
	+ "/" 
	+ string(array_length(o_game.hats) + array_length(o_game.hats_unlocked)));
set_text(c_white, f_title, fa_right, fa_center);