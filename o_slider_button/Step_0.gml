switch (mode) {
	case SLIDERSTATE.NORMAL:
		// set vars
		image_xscale = 1;
		image_yscale = 1;
		image_alpha = 1;
	
		// change state
		if place_meeting(x, y, o_cursor) {
			mode = SLIDERSTATE.HOVER;
		}
		break;
	
	case SLIDERSTATE.HOVER:
		// set vars
		image_xscale = 1.1;
		image_yscale = 1.1;
		image_alpha = 1;
		
		// change state
		if !place_meeting(x, y, o_cursor) {
			mode = SLIDERSTATE.NORMAL;
		}
		if mouse_check_button_pressed(mb_left) 
			or gamepad_button_check_pressed(0, gp_face1)
			or gamepad_button_check_pressed(0, gp_shoulderrb) {
			mode = SLIDERSTATE.CLICKED;
		}
		break;
	
	case SLIDERSTATE.CLICKED:
		// set vars
		image_xscale = 0.9;
		image_yscale = 0.9;
		image_alpha = 0.7;
		
		x = o_cursor.x;
		if (x > slider.x + slider.width) x = slider.x + slider.width; // max
		if (x < slider.x) x = slider.x; // min
		
		// change state
		if mouse_check_button_released(mb_left) 
			or gamepad_button_check_released(0, gp_face1)
			or gamepad_button_check_released(0, gp_shoulderrb) {
			mode = SLIDERSTATE.NORMAL;
		}
		break;
}