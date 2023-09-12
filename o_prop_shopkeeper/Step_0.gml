// Inherit the parent event
event_inherited();

if (driving) {
	hspd += 0.35;
	vspd += 0.6;
	
	x += hspd;
	y += vspd;
	
} else {
	// screen shake
	x += random_range(-shake_remain,shake_remain);
	y += random_range(-shake_remain,shake_remain);
	shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude))
}