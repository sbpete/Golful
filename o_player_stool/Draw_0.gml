draw_self();

// draw hats
if (o_game.hat_current != noone) {
	draw_sprite_ext(o_game.hat_current, 0, 
	x, y - 220, 
	3, 3, 0, c_white, 1);
}