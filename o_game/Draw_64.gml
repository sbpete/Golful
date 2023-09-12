// get vars
var w = display_get_gui_width();
var h = display_get_gui_height();

// debug
if (global.debug) {
	set_text(c_black, f_text, fa_right, fa_center);
	draw_text(w - 8, h - 16, "current level select: " + string(current_level_screen));
	draw_text(w - 8, h - 16 * 2, "hats: " + string(array_length(hats)));
	draw_text(w - 8, h - 16 * 3, "hats unlocked: " + string(array_length(hats_unlocked)));
	draw_text(w - 8, h - 16 * 4, "store hats: " + string(array_length(store_hats)));
	draw_text(w - 8, h - 16 * 5, "current level: " + string(current_level));
	draw_text(w - 8, h - 16 * 6, "latest level: " + string(latest_level));
	draw_text(w - 8, h - 16 * 7, "controller: " + string(global.controller));
	draw_text(w - 8, h - 16 * 8, "level 1 completed: " + string(levels[0].completed));
}

// game updates
if (!array_contains(level_screens, room)
	and !array_contains(global.menus, room)
	and !array_contains(global.cutscenes, room)) {
	
	set_text(c_white, f_text, fa_center, fa_center);
	draw_text(w/2, 16, "putts: " + string(current_putts)); // current putts
}

// icons
if (!global.cinematic and !array_contains(global.cutscenes, room)) {
	set_text(c_black, f_text, fa_left, fa_center);
	var col = c_black;
	
	// quit icon
	draw_sprite_ext(s_exit, 0, 16, h - 18, 
		4/o_camera.pixel_downscale, 4/o_camera.pixel_downscale, 0, col, 1);
	
	// quit Q or button
	if (global.controller) {
		draw_sprite_ext(s_icon_B, 0, 36, h - 18, 
		6/o_camera.pixel_downscale, 6/o_camera.pixel_downscale, 0, c_white, 1)
	} else {
		draw_text(28, display_get_gui_height() - 18, "Q"); // maybe change to img
	}
	
	if (quittable) {
		set_text(c_black, f_debug)
		draw_text(48, display_get_gui_height() - 18, "Are you sure you want to quit?");
	}
	
	// restart icon
	if (!array_contains(level_screens, room) and !array_contains(global.menus, room)) {
		draw_sprite_ext(s_restart, 0, 16, h - 42,  
			4/o_camera.pixel_downscale, 4/o_camera.pixel_downscale, 0, col, 1);
		if (global.controller) {
			draw_sprite_ext(s_icon_Y, 0, 36, h - 42, 
			6/o_camera.pixel_downscale, 6/o_camera.pixel_downscale, 0, c_white, 1)
		} else {
			draw_text(20, h - 42, "  R");
		}
		
	}
	
	// hint icon
	if (!array_contains(level_screens, room) and !array_contains(global.menus, room) 
		and (current_level != 0) and levels[current_level-1].hint != "" and current_game_timer > 60 * 60) {
			
		draw_sprite_ext(s_hint, 0, 16, h - 66,
			4/o_camera.pixel_downscale, 4/o_camera.pixel_downscale, 0, col, 1);
			
		if (global.controller) {
			draw_sprite_ext(s_icon_X, 0, 36, h - 66, 
			6/o_camera.pixel_downscale, 6/o_camera.pixel_downscale, 0, c_white, 1)
		} else {
			draw_text(20, h - 66, "  H");
		}
		
		if (keyboard_check_pressed(ord("H")) or gamepad_button_check_pressed(0, gp_face3)) {
			var seconds = 5;
			display_hint = true;
			hint_a = 0;
			alarm[3] = 60 * seconds;
		}
		
		if (display_hint) {
			if (hint_a < 1) {
				hint_a += hint_a_changespd;
			}
		} else {
			if (hint_a > 0) {
				hint_a -= hint_a_changespd;
			}
		}
		
		if (hint_a > 0) {
			set_text(c_black, f_debug, fa_left, fa_middle);
			draw_text_ext_color(48, h - 66, levels[current_level-1].hint, 25, 1000,
					c_black, c_black, c_black, c_black, hint_a);
		}
	}
}

set_text(c_white);