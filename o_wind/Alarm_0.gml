// set vars
z = fan.z + 63;

// lengthen until hit block
image_xscale = 1; // set image xscale

len = 0; // set len = 0
var stopped = false;

// increment until stopped or hit max length
while (len < max_len) and (!stopped){
	var _x = lengthdir_x(len, dir);
	var _y = lengthdir_y(len, dir);
	
	// collide with block
	// update zfloor
	var largest_z = -room_height * 1.5;
	var _list = ds_list_create();
	var _num = instance_place_list(x + _x, y + _y, o_block_par, _list, false); // get list

	for (var i = 0; i < _num; ++i;) { // loop through
		if (_list[| i].z > largest_z) { 
			if (_list[| i].object_index != o_jumppad) {
				largest_z = _list[| i].z;
			}
		}
	}
	if (largest_z > z) {
		stopped = true;
	}
	
	// increment
	if (!stopped) len += 32;
}

// update object
image_xscale = len;

// update wind fx
if (len < sprite_get_width(s_wind_fx)) {
	if (effect != noone) {
		with (effect) instance_destroy();
		effect = noone;
	}
} else {
	if (effect == noone) {
		effect = instance_create_layer(x, y, "Instances", o_wind_fx);
		effect.image_angle = dir;
		effect.wind = id;
		effect.z = z; // uses z for depth sorting not drawing
	}
}

// create poof
if (len < max_len) {
	create_poof(x + lengthdir_x(len, dir), y + lengthdir_y(len, dir), 2, -32);
}

// set alarm
alarm[0] = len_check;