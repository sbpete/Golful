// Inherit the parent event
scr_depth_3d_z();
depth += 16;

// if is on a platform, upodate x & y
if (platform != noone) {
	x = platform.x;
	y = platform.y;
}