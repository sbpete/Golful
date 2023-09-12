// set curve
percent = 0;
curve = animcurve_get_channel(smooth_in_out, "curve1");

// set start vars
start_x = x;
start_y = y;
start_scale = 10;
image_xscale = start_scale;
image_yscale = start_scale;

// set end vars
xTo = room_width/2;
yTo = room_height/2;
scale_approach = 1;