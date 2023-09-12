// set vars
var w = room_width;
var h = room_height;
var h_sep = 128;
var v_sep = 430;

x_org = 1024;
y_org = 1384;

row_size = 10;

// spawn hat buttons
// spawn cancel button
var _inst = instance_create_layer(x_org, y_org, "Instances", o_hat_button);
_inst.sprite = noone;
_inst.unlocked = true;


var place = 1;
var i = 0;
while (i < array_length(o_game.hats_unlocked)) { // spawn unlocked hats first
	var _inst = instance_create_layer(x_org + (h_sep * (place % row_size)), y_org + (v_sep * (floor(place / row_size))), "Instances", o_hat_button);
	_inst.sprite = o_game.hats_unlocked[i];
	_inst.unlocked = true;
	
	// add to buttons
	array_insert(o_game.buttons, array_length(o_game.buttons), _inst);
	i++;
	place++;
}

i = 0;
while (i < array_length(o_game.hats)) { // spawn rest of hats
	var _inst = instance_create_layer(x_org + (h_sep * (place % row_size)), y_org + (v_sep * (floor(place / row_size))), "Instances", o_hat_button);
	_inst.sprite = o_game.hats[i];
	
	// add to buttons
	array_insert(o_game.buttons, array_length(o_game.buttons), _inst);
	i++;
	place++;
}