if (audio_is_playing(snd_suspense) and room != rm_level_1) audio_stop_sound(snd_suspense);

// reset vars
quittable = false;
coin_collected_temp = false;

// get vars
var w = room_width;
var h = room_height;
var border = 196;

// if level select room
if (array_contains(level_screens, room)) {
	var h_sep = 500;
	
	// spawn arrows
	// left
	if (room != level_screens[0]
		and level_screens_unlocked[current_level_screen - 1].unlocked) { 
			
		instance_create_layer(border, h/2, "Instances", o_arrow_l);
		array_insert(buttons, array_length(buttons), o_arrow_l);
	}

	// shop
	instance_create_layer(w/2 - h_sep, h - border, "Instances", o_arrow_d);
	array_insert(buttons, array_length(buttons), o_arrow_d);
	// wardrobe
	instance_create_layer(w/2, h - border, "Instances", o_arrow_w);
	array_insert(buttons, array_length(buttons), o_arrow_w);
	// settings
	instance_create_layer(w/2 + h_sep, h - border, "Instances", o_arrow_u);
	array_insert(buttons, array_length(buttons), o_arrow_u);
	
	// right
	if (room != level_screens[array_length(level_screens) - 1]
		and level_screens_unlocked[current_level_screen + 1].unlocked) {
			
		instance_create_layer(w - border, h/2, "Instances", o_arrow_r);
		array_insert(buttons, array_length(buttons), o_arrow_r);
	}
}

// settings and shop arrow
if array_contains(global.menus, room) and (room != rm_init) {
	instance_create_layer(border, border, "Instances", o_arrow_back);	
}