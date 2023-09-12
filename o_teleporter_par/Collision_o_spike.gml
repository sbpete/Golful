// spike kill
instspike = instance_place(x,y,o_spike);
if (z < instspike.z + instspike.ht) {
	create_poof(block.xTo, block.yTo, 8, z - 192); // idk y 192
	teleporter_respawn();
}