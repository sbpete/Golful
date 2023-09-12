// change to player
create_poof(x, y, 8);
play_sound(snd_ploop);
audio_stop_sound(snd_suspense);

with (instance_create_layer(x, y, "Instances", o_player)) {
	z = other.z;	
}
instance_destroy();