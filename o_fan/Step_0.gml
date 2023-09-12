// Inherit the parent event
event_inherited();

// spawn wind and animate
if (!reversed) {
	if (powered) { // powered
		if (button.pressed) { // button pressed
			image_speed = 1; 
			if (!wind) {
				spawn_wind();
				wind = true;
			}
		} else { // not button pressed
			image_speed = 0;
			if (wind) {
				if (wind_inst.effect != noone) {
					with (wind_inst.effect) instance_destroy();
				}
				with (wind_inst) instance_destroy();
				wind = false;
			}
		}
	} else { // not powered
		image_speed = 1;
		if (!wind) {
			spawn_wind();
			wind = true;
		}
	}
} else { // do opposite if reverse
	if (powered) {
		image_speed = 1;
		if (!wind) {
			spawn_wind();
			wind = true;
		}
	} else {
		if (button.pressed) {
			image_speed = 1; 
			if (!wind) {
				spawn_wind();
				wind = true;
			}
		} else {
			image_speed = 0;
			if (wind) {
				if (wind_inst.effect != noone) {
					with (wind_inst.effect) instance_destroy();
				}
				with (wind_inst) instance_destroy();			
				wind = false;
			}
		}
	}
}

// audio
if (wind) and (!audio_is_playing(snd_fan)) {
	play_sound(snd_fan);
}	