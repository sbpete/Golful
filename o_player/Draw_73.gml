// draw putt arrow
if (state == PUTTPLAYERSTATE.PUTTABLE) {
	// get vars
	var dir;
	if (o_game.invert_putting) {
		dir = point_direction(player_draw_x(), player_draw_y(), o_cursor.x, o_cursor.y);
	} else {
		dir = point_direction(o_cursor.x, o_cursor.y, player_draw_x(), player_draw_y());	
	}
	
	// angle assist
	if (o_game.angle_assist) {
		var amnt = 15;
		dir = round(dir / amnt) * amnt;
	}
	
	var len = point_distance(o_cursor.x, o_cursor.y, player_draw_x(), player_draw_y());
	if (len > max_putt_spd) len = max_putt_spd;
	if (len < min_putt_spd) len = min_putt_spd;
	var offset = 48;
	
	// get points
	var player_x = player_draw_x() + lengthdir_x(offset, dir);
	var player_y = player_draw_y() + lengthdir_y(offset, dir);
	var xx_ln = player_draw_x() + lengthdir_x(len - offset, dir);
	var yy_ln = player_draw_y() + lengthdir_y(len - offset, dir);
	var xx = player_draw_x() + lengthdir_x(len, dir);
	var yy = player_draw_y() + lengthdir_y(len, dir);
	
	// draw arrow
	draw_line_width(player_x, player_y, xx_ln, yy_ln, 32);
	draw_arrow(player_x, player_y, xx, yy, 96);
}