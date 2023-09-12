// create plant decor
if (chance(0.5)) {
	instance_create_layer(x, y, "Instances", o_plant);
}

// make grass after depth is sorted
alarm[0] = 4;