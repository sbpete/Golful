// Inherit the parent event
event_inherited();

// only move if powered and button pressed
var within = 4;
if (!powered) {
	// move back and forth
	if (forward == 1) {
		// moving forward
		hspd = lengthdir_x(move_spd, dir);
		vspd = lengthdir_y(move_spd, dir);
	
		if (point_distance(x, y, x_org + xTo, y_org + yTo) < within) { // change dir
			forward = -forward;
		}
	} else {
		// moving backward
		hspd = lengthdir_x(-move_spd, dir);
		vspd = lengthdir_y(-move_spd, dir);
	
		if (point_distance(x, y, x_org, y_org) < within) { // change dir
			forward = -forward;
		}
	}
} else {
	if (!reversed) {
		if (button.pressed) {
			// move back and forth
			if (forward == 1) {
				// moving forward
				hspd = lengthdir_x(move_spd, dir);
				vspd = lengthdir_y(move_spd, dir);
	
				if (point_distance(x, y, x_org + xTo, y_org + yTo) < within) { // change dir
					forward = -forward;
				}
			} else {
				// moving backward
				hspd = lengthdir_x(-move_spd, dir);
				vspd = lengthdir_y(-move_spd, dir);
	
				if (point_distance(x, y, x_org, y_org) < within) { // change dir
					forward = -forward;
				}
			}
		} else {
			hspd = 0;
			vspd = 0;
		}
	} else {
		if (!button.pressed) {
			// move back and forth
			if (forward == 1) {
				// moving forward
				hspd = lengthdir_x(move_spd, dir);
				vspd = lengthdir_y(move_spd, dir);
	
				if (point_distance(x, y, x_org + xTo, y_org + yTo) < within) { // change dir
					forward = -forward;
				}
			} else {
				// moving backward
				hspd = lengthdir_x(-move_spd, dir);
				vspd = lengthdir_y(-move_spd, dir);
	
				if (point_distance(x, y, x_org, y_org) < within) { // change dir
					forward = -forward;
				}
			}
		} else {
			hspd = 0;
			vspd = 0;
		}
	}
}

// update mvmt
x += hspd;
y += vspd;