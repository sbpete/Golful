// Inherit the parent event
event_inherited();

// wind
windable();

// collision
if place_meeting(xTo + x_wind, yTo, o_block_par) {
	var _list = ds_list_create();
	var _num = instance_place_list(xTo + x_wind, yTo, o_block_par, _list, false); // get list

	for (var i = 0; i < _num; ++i;) { // loop through
		if (_list[| i].z >= z) { 
			x_wind = 0;
		}
	}
	ds_list_destroy(_list);
}
// vertical
if place_meeting(xTo, yTo + y_wind, o_block_par) {
	var _list = ds_list_create();
	var _num = instance_place_list(xTo, yTo + y_wind, o_block_par, _list, false); // get list

	for (var i = 0; i < _num; ++i;) { // loop through
		if (_list[| i].z >= z) { 
			y_wind = 0;
		}
	}
	ds_list_destroy(_list);
}

// animation (bounce)
var amnt = 8;
stretch_x += (1 - stretch_x)/amnt; // approach 1
stretch_y += (1 - stretch_y)/amnt;