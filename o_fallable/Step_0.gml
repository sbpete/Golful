/// update depth 3d
scr_depth_3d_z();
depth += ht;

// fall from player
if (place_meeting(x, y, o_player) and z == o_player.z and !contact) {
	contact = true;
	alarm[0] = fall_timer;
}
// fall from box
if (place_meeting(x, y, o_box) and !contact) {
	var _inst = instance_place(x, y, o_box);
	if (z == _inst.z - _inst.ht) {
		contact = true;
		alarm[0] = fall_timer;
	}
}

// shake
if (contact) {
	var amnt = 3;
	x = start_x + irandom_range(-amnt, amnt);	
	y = start_y + irandom_range(-amnt, amnt);	
}