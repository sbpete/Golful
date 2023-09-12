// spike kill
instspike = instance_place(x,y,o_spike);
if (z < instspike.z + instspike.ht) {
	create_poof(xTo, yTo, 8, z - 192); // not sure why 192
	box_respawn();
	play_sound(snd_poof);
}