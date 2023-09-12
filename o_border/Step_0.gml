if (array_contains(global.menus, room)) or (array_contains(global.cutscenes, room)) {
		
	image_angle = 0;
	
	x = x_norm;
	y = y_norm;
} else {
	image_angle = -global.z;
	
	x = x_start;
	y = y_start;
}