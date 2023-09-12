var amnt = 1800;  
y = o_prop_table.y + amnt;

switch (mode) {
	case BUTTONSTATE.NORMAL:
		// set vars
		image_xscale = 1;
		image_yscale = 1;
		image_alpha = 1;
		
		image_angle = 0;
	
		// change state
		if place_meeting(x, y, o_cursor) {
			mode = BUTTONSTATE.HOVER;
			play_sound(snd_select, random_range(0.2, 0.3), 0, random_range(2, 3));
		}
		break;
	
	case BUTTONSTATE.HOVER:
		// set vars
		image_xscale = 1.05;
		image_yscale = 1.05;
		image_alpha = 1;
		
		// wave when hovered
		image_angle = wave(-5, 5, 0.5, 0);
		
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
		image_alpha = 0.8;
		
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