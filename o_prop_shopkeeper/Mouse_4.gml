shake_magnitude = 6;
shake_remain = 6;
shake_length = 15;

play_sound(snd_select);

clicks++;
if (clicks >= 8) and (!driving) {
	driving = true;
	
	if !steam_get_achievement("ach_annoy_golfcart") {
		steam_set_achievement("ach_annoy_golfcart");
	}
	
	play_sound(snd_golf_cart);
	alarm[0] = 180;
	alarm[1] = 5;
}