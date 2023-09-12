// overwrite because variable z // everything in box obj except fall because that is in teleporter obj
scr_depth_3d_z();
depth += ht; // maybe fix

// move timer
if (move_timer > 0) move_timer--;

// block collision
if (z >= 0) on_block();

// moving platforms and wind
if (moving) and (wind) {
	xTo += x_add;
	yTo += y_add;
	xTo += x_wind;
	yTo += y_wind;
} else if (moving) {
	xTo += x_add;
	yTo += y_add;
} else if (wind) {
	xTo += x_wind;
	yTo += y_wind;
}
x += (xTo - x)/3;	
y += (yTo - y)/3;

// jumppad
jump_pad();

// gravity
gravty_obj(ht);