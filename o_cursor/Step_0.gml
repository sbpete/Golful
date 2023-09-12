// set pos
if (global.controller == 1) {
	// putting w controller
	if (instance_exists(o_player) and (o_player.state == PLAYERSTATE.PUTTABLE)) 
	or (instance_exists(o_player_putt) and (o_player_putt.state == PUTTPLAYERSTATE.PUTTABLE)) {
		
		var controller_h = gamepad_axis_value(0, gp_axisrh)
		var controller_v = gamepad_axis_value(0, gp_axisrv)
		if (abs(controller_h) > 0.1) or (abs(controller_v) > 0.1) {
			controller_angle = point_direction(0, 0, controller_h, controller_v) + 45;
			var scale_up = 600;
			var _axis_dist = point_distance(0, 0, controller_h, controller_v) * scale_up;
			xTo = player_draw_x() + lengthdir_x(_axis_dist, controller_angle);
			yTo = player_draw_y() + lengthdir_y(_axis_dist, controller_angle);
		} else {
			xTo = player_draw_x();
			yTo = player_draw_y();
		}
	
		// update object position
		x += (xTo - x) / 4;
		y += (yTo - y) / 4;
		
	} else {
		// moving cursor w controller
		var move_spd = 20;
		hmove = gamepad_axis_value(0, gp_axisrh);
		vmove = gamepad_axis_value(0, gp_axisrv);
		if (abs(hmove) > 0.2 or abs(vmove) > 0.2) {
			var dir = point_direction(x, y, x + hmove, y + vmove);
			if !(array_contains(global.menus, room)) {
				dir -= global.z;
			}
			if (hmove != 0 or vmove != 0) {
				hspd = lengthdir_x(move_spd, dir);
				vspd = lengthdir_y(move_spd, dir);
			}
		} else {
			hspd = 0;
			vspd = 0;
		}
		
		// collision
		if (place_meeting(x + hspd, y, o_border)) {
			if !place_meeting(x + sign(hspd), y, o_border) x++;
			hspd = 0;	
		}
		if (place_meeting(x, y + vspd, o_border)) {
			if !place_meeting(x, y + sign(vspd), o_border) y++;
			vspd = 0;	
		}

		x += hspd;
		y += vspd;
	}
} else {
	// mouse and keyboard
	x = mouse_x;
	y = mouse_y;
}