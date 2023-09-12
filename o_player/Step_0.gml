//par
event_inherited();
if (z >= 64) depth -= 16; // if on ground z changes

// shortcuts
key_right = keyboard_check(ord("D"));
key_left = keyboard_check(ord("A"));
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));
mouse_left_pressed = mouse_check_button_pressed(mb_left);
mouse_left_released = mouse_check_button_released(mb_left);
mouse_right = mouse_check_button_pressed(mb_right);

// change input based on controller
update_input();

// block collision
on_block();

// switch
switch (state) {
	case PLAYERSTATE.FREE :
		// movement
		// ground movement
		hmove = key_right - key_left;
		vmove = key_down - key_up;
		var dir = point_direction(x, y, x + hmove, y + vmove) - global.z;
		if (hmove != 0 or vmove != 0) {
			base_hspd = lengthdir_x(move_spd, dir);
			base_vspd = lengthdir_y(move_spd, dir);
			if (zgrav == 0) {
				if (z_offset < 16 - 1) {
					var approach_ht = 16;
					z_offset += (approach_ht - z_offset)/4;
				} else {
					z_offset = wave(16, 32, 0.25, 0);
				}
			}
		} else {
			var approach_ht = 16;
			z_offset += (approach_ht - z_offset)/8;
			base_hspd = 0;
			base_vspd = 0;
		}
		
		// wind
		windable();
		// update feet
		update_feet(dir);
		
		// add speeds 
		hspd = base_hspd + x_add + x_wind; // FIX SO THAT WIND LASTS
		vspd = base_vspd + y_add + y_wind;

		// collision
		if (z >= 0) collision_move();

		// jumping
		jumpable();
		// jump pad
		jump_pad();

		// change state
		if (mouse_left_pressed or gamepad_button_check_pressed(0, gp_shoulderrb)) and (!place_meeting(x, y, o_jumppad)) {
			state = PLAYERSTATE.PUTTABLE;
		}
		break;
	case PLAYERSTATE.PUTTABLE:
		// offset to 0
		z_offset += (0 - z_offset)/4;	
	
		// no movement
		base_hspd = 0;
		base_vspd = 0;
		
		// wind 
		windable();
		
		// add speeds
		hspd = base_hspd + x_add + x_wind;
		vspd = base_vspd + y_add + y_wind;
		
		// collision
		if (z >= 0) collision();
	
		// gravity
		gravty();
		// jump pad
		jump_pad();
		
		var dir;
		
		if (o_game.invert_putting) {
			dir = point_direction(player_draw_x(), player_draw_y(), o_cursor.x, o_cursor.y);
		} else {
			dir = point_direction(o_cursor.x, o_cursor.y, player_draw_x(), player_draw_y());
			
		}
		
		// change state
		if (mouse_left_released or gamepad_button_check_released(0, gp_shoulderrb))  { // putt
			var scale = 30;
			var putt_spd = point_distance(o_cursor.x, o_cursor.y, x, y);
			if (putt_spd > max_putt_spd) putt_spd = max_putt_spd;
			base_hspd = lengthdir_x(putt_spd / scale, dir);
			base_vspd = lengthdir_y(putt_spd / scale, dir);
			state = PLAYERSTATE.PUTTED;
			// play sound
			play_sound(snd_hit);
			// update game
			o_game.current_putts++;
		}
		if (mouse_right or gamepad_button_check_pressed(0, gp_shoulderlb)) {
			state = PLAYERSTATE.FREE;
		}
		break;
		
	case PLAYERSTATE.PUTTED:
		// z offset
		z_offset = 0;

		//slow down
		var fric = 0.99;
		if (base_hspd != 0) base_hspd *= fric;
		if (base_vspd != 0) base_vspd *= fric;
		
		// wind 
		windable();
		
		// add speeds
		hspd = base_hspd + x_add + x_wind;
		vspd = base_vspd + y_add + y_wind; // wind added in windable
		
		// collision
		if (z >= 0) collision();
		
		// jumping
		gravty();
		// jump pad
		jump_pad();
		// teleport
		teleport();
		
		// change state once slow
		var change_upper_spd = 0.8;
		if (abs(hspd) < change_upper_spd and abs(vspd) < change_upper_spd)
			and ((vk_left) or (vk_right) or (vk_up) or (vk_down)) {
			state = PLAYERSTATE.FREE;
			set_feet();
			x_wind = 0;
			y_wind = 0;
		}
		var change_spd = 0.6;
		if (abs(hspd) < change_spd and abs(vspd) < change_spd) {
			state = PLAYERSTATE.FREE;
			set_feet();
			x_wind = 0;
			y_wind = 0;
		}
		break;
		
}

// update x & y
x += hspd;
y += vspd;

// fall
fall();

// win
player_reach_hole();

// won state
if (won) and (state != PLAYERSTATE.PUTTED) {
	state = PLAYERSTATE.PUTTED;
	base_hspd = hspd;
	base_vspd = vspd;
}

// animation
if (state == PLAYERSTATE.FREE) {
	sprite_index = s_player;
	if (x_wind > 0) {
		image_index = 1;	
	} else if (y_wind > 0) {
		image_index = 2;	
	} else if (x_wind < 0) {
		image_index = 3;	
	} else if (y_wind < 0) {
		image_index = 4;	
	} else {
		image_index = 0;	
	}
} else {
	sprite_index = s_player_ball;	
}