// wind
if (place_meeting(x, y, o_wind) and z == instance_place(x, y, o_wind).z - 63 and !windswept) {
	effect = instance_create_layer(x, y, "Instances", o_windswept);
	effect.z = z + 2;
	effect.depth = depth - 2;
	windswept = true;
}
// destroy wind
if (windswept and !place_meeting(x, y, o_wind)) {
	with (effect) instance_destroy();
	windswept = false;
}

// flatten
if place_meeting(x, y, o_box) {
	if (!flattened) {
		effect2 = instance_create_layer(x, y, "Instances", o_flattened);
		effect2.z = z + 1;
		effect2.depth = depth - 1;
		flattened = true;
	} else {
		effect2.image_alpha = 4;
	}
}
// destroy flattened
if (flattened and effect2.image_alpha <= 0) {
	with (effect2) instance_destroy();
	flattened = false;	
}