if (keyboard_check_pressed(vk_anykey))
	or gamepad_button_check_pressed(0, gp_face1)
	or gamepad_button_check_pressed(0, gp_face2)
	or gamepad_button_check_pressed(0, gp_face3)
	or gamepad_button_check_pressed(0, gp_face4) {
		
		// cut off music
		audio_sound_gain(m_intro, 0, 1000);

		// change room
		if (o_game.levels[0].completed == false) { // if first level not completed
			transition(TRANS_MODE.NEXT);
		} else {
			goto_levels();	
		}
}