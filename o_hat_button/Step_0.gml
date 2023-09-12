switch (mode) {
	case BUTTONSTATE.NORMAL:
		// set vars
		image_xscale = 1;
		image_yscale = 1;
		
		// different part for hat buttons
		if (o_game.hat_current == sprite) {
			image_alpha = 1;	
		} else {
			image_alpha = 0.7;	
		}
		
	
		// change state
		if place_meeting(x, y, o_cursor) {
			mode = BUTTONSTATE.HOVER;
			play_sound(snd_select, random_range(0.2, 0.3), 0, random_range(2, 3));
		}
		break;
	
	case BUTTONSTATE.HOVER:
		// set vars
		image_xscale = 1.1;
		image_yscale = 1.1;
		image_alpha = 0.7;
		
		// change state
		if !place_meeting(x, y, o_cursor) {
			mode = BUTTONSTATE.NORMAL;
		}
		if mouse_check_button_pressed(mb_left) 
		or gamepad_button_check_pressed(0, gp_face1) 
		or gamepad_button_check_pressed(0, gp_shoulderrb) {
			
			mode = BUTTONSTATE.CLICKED;
		}
		break;
	
	case BUTTONSTATE.CLICKED:
		// set vars
		image_xscale = 0.9;
		image_yscale = 0.9;
		image_alpha = 0.5;
		
		// change state
		if mouse_check_button_released(mb_left) 
			or gamepad_button_check_released(0, gp_face1)
			or gamepad_button_check_released(0, gp_shoulderrb) {
				
			mode = BUTTONSTATE.ACTION;
		}
		break;
		
	case BUTTONSTATE.ACTION:
		script_execute(action);
		mode = BUTTONSTATE.NORMAL;
		break;
}