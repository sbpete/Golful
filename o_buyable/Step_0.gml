switch (mode) {
	case BUYSTATE.NORMAL:
		// set vars
		image_xscale = 1 * scale;
		image_yscale = 1 * scale;
		image_alpha = 1 * scale;
	
		// change state
		if place_meeting(x, y, o_cursor) {
			mode = BUYSTATE.HOVER;
			play_sound(snd_select, random_range(0.2, 0.3), 0, random_range(2, 3));
		}
		break;
	
	case BUYSTATE.HOVER:
		// set vars
		image_xscale = 1.1 * scale;
		image_yscale = 1.1 * scale;
		image_alpha = 1 * scale;
		
		// change state
		if !place_meeting(x, y, o_cursor) {
			mode = BUYSTATE.NORMAL;
		}
		if mouse_check_button_pressed(mb_left) 
			or gamepad_button_check_pressed(0, gp_face1)
			or gamepad_button_check_pressed(0, gp_shoulderrb) {
				
			mode = BUYSTATE.CLICKED;
		}
		break;
	
	case BUYSTATE.CLICKED:
		// set vars
		image_xscale = 0.9 * scale;
		image_yscale = 0.9 * scale;
		image_alpha = 0.7 * scale;
		
		// change state
		if mouse_check_button_released(mb_left) 
			or gamepad_button_check_released(0, gp_face1) 
			or gamepad_button_check_released(0, gp_shoulderrb) {
				
			mode = BUYSTATE.ACTION;
		}
		break;
		
	case BUYSTATE.ACTION:
		buy_action();
		
		mode = BUYSTATE.NORMAL;
		break;
}