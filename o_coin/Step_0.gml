// Inherit the parent event
event_inherited();

// update zfloor
// if on block
if place_meeting(x, y, o_block_par) {
	// update zfloor
	var largest_z = -10000;
	var _list = ds_list_create();
	var _num = instance_place_list(x, y, o_block_par, _list, false); // get list

	for (var i = 0; i < _num; ++i;) { // loop through
		if (_list[| i].z > largest_z and _list[| i].z <= z) { 
			if (_list[| i].object_index != o_crate or object_index != o_crate) {
				largest_z = _list[| i].z;
				instbelow = _list[| i];
			}
		}
	}
	zfloor = instbelow.z;
	if (largest_z == -10000) { // if largest z hasnt changed (no box below)
		zfloor = -10000;
	}
	ds_list_destroy(_list);
} else {
	zfloor = 64; /*zfloor is ground level*/
}

if !place_meeting(x, y, o_floor_par) and !place_meeting(x, y, o_platform) and !place_meeting(x, y, o_box) {
	instbelow = -1;
}

// wave z_offset
z_offset = wave(16, 32, 1, 0.0);

// pickup
if (place_meeting(x, y, o_player) and (o_player.z >= z - 32) and (o_player.z < z + 64) and !global.testing) {
	o_game.coin_collected_temp = true;
	play_sound(snd_coin_collect_small);
	create_poof(x, y, 6, 16);
	instance_destroy();
}