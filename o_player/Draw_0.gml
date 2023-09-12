/// draw shadow FIRST
if (!won) scr_draw_shadow();

// draw feet
if (state == PLAYERSTATE.FREE) and (!won) {
	draw_feet();
}

// draw sprite 3d rotation
scr_draw_sprite_offset_3d_z(image_alpha);

// draw hat
draw_hat();