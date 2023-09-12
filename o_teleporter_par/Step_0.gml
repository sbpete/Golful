// overwrite because variable z
scr_depth_3d_z();
depth += ht; // maybe fix

// update to block
if (instance_exists(block)) {
	x = block.x;
	y = block.y;
	z = block.z;
}

// fall
if (z < -2500) {
	teleporter_respawn();
}