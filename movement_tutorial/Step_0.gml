if (global.controller) {
	sprite_index = movement_controller;		
} else {
	sprite_index = movement;	
}

if (instance_exists(o_player_spawn_feet)) {
	image_alpha = 0;
} else {
	image_alpha += 0.01;	
}