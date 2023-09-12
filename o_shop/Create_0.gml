// get shop items
var _len = array_length(o_game.hats);

var h_sep = 500;
var v_down = 1680;

// get random items
var hats_shown = 3;
if (_len < 3) {
	hats_shown = _len;
}

// add wardrobe shortcut to buttons
array_insert(o_game.buttons, array_length(o_game.buttons), o_wardrobe_button);

var i = 0;
while (i < hats_shown) {
	var random_hat = irandom(array_length(o_game.hats) - 1);
	
	if (!array_contains(o_game.store_hats, o_game.hats[random_hat]) and o_game.hats[random_hat] != s_crown) {
		var _inst = instance_create_layer(((room_width/2) - h_sep) + (i * h_sep), v_down, "Instances", o_buyable);
		_inst.sprite_index = o_game.hats[random_hat];
		_inst.isHat = true;
		array_insert(o_game.store_hats, 0, o_game.hats[random_hat]);
	
		// add to buttons
		array_insert(o_game.buttons, array_length(o_game.buttons), _inst);
		i++;
	}
}