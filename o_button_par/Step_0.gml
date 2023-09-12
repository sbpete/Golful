// Inherit the parent event
event_inherited();

// press
// if colliding
if (place_meeting(x, y, o_player) || place_meeting(x, y, o_box)) {
	// get inst
	var _inst = -1;
	if place_meeting(x, y, o_player) and place_meeting(x, y, o_box) {
		_inst = instance_place(x, y, o_box);
	} else if place_meeting(x, y, o_player) {
		_inst = instance_place(x, y, o_player);
	} else {
		_inst = instance_place(x, y, o_box);
	}
	
	// if inst on ground
	if (_inst.zgrav == 0) {
		if (!pressed) {
			pressed = true;
			play_sound(snd_switch_on);
		}
	} else {
		if (pressed) {
			pressed = false;
			play_sound(snd_switch_off);
		}
	}
} else { // if not colliding
	if (pressed) {
		pressed = false;
		play_sound(snd_switch_off);
	}
}

// animation
if (pressed) {
	image_index = 1;
} else {
	image_index = 0;
}