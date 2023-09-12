// states
switch (state) {
	case BGSTATE.FADEIN: 
		image_alpha += fade_spd;
		if (image_alpha >= 1) {
			state = BGSTATE.NORM;	
		}
	break;
	
	case BGSTATE.FADEOUT:
		image_alpha -= fade_spd;
		if (image_alpha <= 0) {
			instance_destroy();	
		}
	break;
}

// slight wave effect
var scale = 4.05;
image_xscale = scale;
image_yscale = scale;
var h = room_height/2;
var w = room_width/2;
var amnt = 12;
var seconds = 6;
y = wave(h - amnt, h + amnt, seconds, 0); // due to angle
x = wave(w - amnt, w + amnt, seconds, 0);