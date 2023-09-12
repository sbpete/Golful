// draw shadow
if (instbelow != -1) {
	//draw shadow according to z height and zfloor
	var xscale = 1 - ((z - zfloor) * 0.005);
	var yscale = 1 - ((z - zfloor) * 0.005);
	var min_scale = 0.4;
	if (xscale < min_scale) xscale = min_scale;
	if (yscale < min_scale) yscale = min_scale;
	
	draw_sprite_ext(s_player_shadow,image_index,
		x+lengthdir_x(zfloor,-global.z-270),
		y+lengthdir_y(zfloor,-global.z-270),
		xscale, yscale, -global.z,c_white,1);
}

// draw
scr_draw_sprite_offset_3d_z();