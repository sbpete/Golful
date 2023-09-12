if (o_game.levels[level_number - 1].unlocked) 
	and (level_number != 1) and (level_number != 2) and (level_number != 3) { // if unlocked
	
	// pop up (set fade)
	if (distance_to_object(o_menu_player) < 128/* and room != rm_level_tutorial*/) {
		if (fade < 1) fade += 0.1;
	} else {
		if (fade > 0) fade -= 0.1;
	}
	
	// get vars
	var ht = 480;
	var _x = x + lengthdir_x(ht, -global.z + 90);
	var _y = y + lengthdir_y(ht, -global.z + 90);
	var _curr_level = o_game.levels[level_number - 1];

	if (fade > 0) {
		// draw border
		var xscale = 3.5;
		var yscale = 2.3;
		draw_sprite_ext(s_popup, 0, _x, _y, xscale * fade, yscale * fade, -global.z, c_white, 1);
		
		// draw title
		set_text(c_white, f_menu_normal, fa_center, fa_center);
		
		var string_level = string(level_number);
		if (level_number <= 9) {
			string_level = "0" + string_level;	
		}
		
		var _col = make_color_rgb(100, 100, 100);
		var title_ht = 148;
		draw_text_transformed_color(
			_x + lengthdir_x(title_ht, -global.z + 90), 
			_y + lengthdir_y(title_ht, -global.z + 90), 
			string_level, 1, 1, -global.z, 
			_col, _col, _col, _col, fade);
		
		// coin vars
		var h_sep = 180;
		var l_coin = [_x + lengthdir_x(h_sep, -global.z + 180), 
			_y + lengthdir_y(h_sep, -global.z + 180)]
		var r_coin = [_x + lengthdir_x(h_sep, -global.z), 
			_y + lengthdir_y(h_sep, -global.z)]
		
		var coin1_s = 1;
		var coin2_s = 1;
		var coin3_s = 1;
		var up_size = 1.2;
		
		var norm_alpha = 0.6;
		var coin1_a = norm_alpha;
		var coin2_a = norm_alpha;
		var coin3_a = norm_alpha;
		
		
		// draw popups for coins
		var dist = 80;
		var text_ht = -150; // amnt below normal coords
		var text_x = _x + lengthdir_x(text_ht, -global.z + 90); // bottom center
		var text_y = _y + lengthdir_y(text_ht, -global.z + 90);
		set_text(c_black, f_menu_small);
		var _string = "";
		var _scale = 1.1;
		
		// get vars
		// left coin (completion)
		if (point_distance(l_coin[0], l_coin[1], o_cursor.x, o_cursor.y) < dist) {
			// pop up (set fade)
			if (fade_1 < 1) fade_1 += 0.1;
			coin1_s = up_size;
		} else {
			if (fade_1 > 0) fade_1 -= 0.1;	
		}
		// middle coin (collected)
		if (point_distance(_x, _y, o_cursor.x, o_cursor.y) < dist) {
			// pop up (set fade)
			if (fade_2 < 1) fade_2 += 0.1;
			coin2_s = up_size;
		} else {
			if (fade_2 > 0) fade_2 -= 0.1;	
		}
		// right coin (putts)
		if (point_distance(r_coin[0], r_coin[1], o_cursor.x, o_cursor.y) < dist) {
			// pop up (set fade)
			if (fade_3 < 1) fade_3 += 0.1;
			coin3_s = up_size;
		} else {
			if (fade_3 > 0) fade_3 -= 0.1;	
		}
		
		// actually draw
		_col = make_color_rgb(149, 149, 149);
		draw_sprite_ext(s_coin_show, 0, 
			text_x, text_y, _scale * 1.2, _scale * 1.2, -global.z, c_white, fade * fade_2);
		draw_sprite_ext(s_flag, 0, 
			text_x, text_y, _scale,  _scale, -global.z, c_white, fade * fade_1);
		var h_sep = 80;
			draw_sprite_ext(s_putts, 0, 
				text_x + lengthdir_x(-h_sep, -global.z),
				text_y + lengthdir_y(-h_sep, -global.z),
				_scale * 1.2, _scale * 1.2, -global.z, c_white, fade * fade_3);
		_string = "<= " + string(_curr_level.putts_needed);
		draw_text_transformed_color(
			text_x + lengthdir_x(h_sep, -global.z),
			text_y + lengthdir_y(h_sep, -global.z),
			_string, 1, 1, -global.z, 
			_col, _col, _col, _col, fade * fade_3);
	
		// draw coins
		if (_curr_level.completed) coin1_a = 1; // l
		if (_curr_level.coin_collected) coin2_a = 1; // m
		if (_curr_level.putt_coin_collected) coin3_a = 1; // r
	
		// left coin
		draw_sprite_ext(s_coin_icon, 0, 
			l_coin[0], 
			l_coin[1], 
			coin1_s, coin1_s, -global.z, c_white, coin1_a * fade);
		 // middle coin
		draw_sprite_ext(s_coin_icon, 0, _x, _y, coin2_s, coin2_s, -global.z, c_white, coin2_a * fade);
		// right coin
		draw_sprite_ext(s_coin_icon, 0, 
			r_coin[0], 
			r_coin[1], 
			coin3_s, coin3_s, -global.z, c_white, coin3_a * fade);
	}
}