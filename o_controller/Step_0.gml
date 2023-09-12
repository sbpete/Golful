if (keyboard_check_pressed(vk_anykey))
	or gamepad_button_check_pressed(0, gp_face1)
	or gamepad_button_check_pressed(0, gp_face2)
	or gamepad_button_check_pressed(0, gp_face3)
	or gamepad_button_check_pressed(0, gp_face4) {

		// change room
		transition(TRANS_MODE.NEXT);
}