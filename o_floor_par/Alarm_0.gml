// spawn grass and set vars
if place_meeting(x, y, o_box) {
	if (instance_place(x, y, o_box).respawn) {
		grass = instance_create_layer(x, y, "Instances", o_dirt);
		grass.z = z - 8;
	} else {
		grass = instance_create_layer(x, y, "Instances", o_grass);
		grass.z = z;
		grass.ground = id;
	}
} else {
	grass = instance_create_layer(x, y, "Instances", o_grass);
	grass.z = z;
	grass.ground = id;
}

grass.depth = depth - 4;