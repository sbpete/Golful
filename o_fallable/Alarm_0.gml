// change to fallable
with (instance_create_layer(x, y, "Instances", o_fallable_done)) {
	z = other.z;	
	sprite_index = other.sprite_index;
}
instance_destroy();