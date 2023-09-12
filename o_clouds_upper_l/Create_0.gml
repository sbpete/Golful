// set vars
var y_offset = 100;
x = 0;
y = y_offset;

// Inherit the parent event
event_inherited();

// overwrite vars
xTo = -room_width;
yTo = y_offset;
start_scale = 1.25;
increment_spd = 75;
image_xscale = start_scale;
image_yscale = start_scale;