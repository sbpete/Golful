// color black if not unlocked
if (!unlocked) {
	draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, c_black, image_alpha);
} else {
	draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, c_white, image_alpha);
}