// set vars
depth = 9999;
x = room_width/2;
y = room_height/2;

image_angle = global.z + 90;	
image_alpha = 0;

fade_spd = 0.05;

// states
enum BGSTATE {
	FADEIN,
	NORM,
	FADEOUT
}
state = BGSTATE.FADEIN;