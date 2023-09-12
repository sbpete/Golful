// Inherit the parent event
event_inherited();

// delete if touching placeable or box
if place_meeting(x, y, o_placeable_par) or (instance_exists(o_box) and 
	instance_nearest(x, y, o_box).xTo == x and instance_nearest(x, y, o_box).yTo == y) {
	// spawn particle
	create_grav_particle(3)
	instance_destroy();	
}

// wind
if (place_meeting(x, y, o_wind)) {
	image_speed = 0;	
} else {
	image_speed = 0;	
}