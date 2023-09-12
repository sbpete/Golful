// set movement
if (ball) {
	vspd += 0.7;	
}

// collide w flag
if place_meeting(x, y, o_outro_flag) {
	hspd = -hspd;
	play_sound(snd_thud);
}

x += hspd;
y += vspd;