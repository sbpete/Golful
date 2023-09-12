// Inherit the parent event
event_inherited();

// change to absent if already picked up

if (!global.testing and (o_game.current_level != 0) 
	and (o_game.levels[o_game.current_level - 1].coin_collected)) {
		
	var _inst = instance_create_layer(x, y, "Instances", o_coin_absent);
	_inst.ht = ht;
	
	instance_destroy();
}

// z offset
z_offset = 0;
zfloor = 64
xTo = x;
yTo = y;