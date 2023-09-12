// change vars
dropping = true;

// change depth to behind hill
depth = layer_get_depth("dropzone");

// reset vars
start_x = x;
start_y = y;
xTo = x + 500;
yTo = y + 500;

percent = 0;
curve = animcurve_get_channel(ease_in, "curve1");