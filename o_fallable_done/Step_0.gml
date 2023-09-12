///update depth 3d
scr_depth_3d_z();
depth += ht;

// grav
z -= zgrav;
zgrav += 0.6;

// fall until under amount
if (z < -room_height * 1.5) {
	instance_destroy();
}