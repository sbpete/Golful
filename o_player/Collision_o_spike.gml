// spike kill
instspike = instance_place(x,y,o_spike);
if (z < instspike.z + instspike.ht) {
	kill();
}