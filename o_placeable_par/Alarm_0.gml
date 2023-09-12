// update zfloor
if place_meeting(x, y, o_floor_par) {
	instbelow = instance_place(x, y, o_floor_par);
	zfloor = instbelow.z;
}
if place_meeting(x, y, o_platform) {
	instbelow = instance_place(x, y, o_platform);
	zfloor = instbelow.z;
	platform = instbelow;
}

// snap to zfloor
z = zfloor;	/*snap z pos to on ground*/