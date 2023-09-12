// Inherit the parent event
event_inherited();

// vars
ht = 64; // height
wind = false;
wind_inst = noone;

// change image
if (dir == 90) {
	sprite_index = s_fan_up;
} else if (dir == 180) {
	sprite_index = s_fan_up;
	image_xscale = -1;
} else if (dir == 270) {
	image_xscale = -1;
}