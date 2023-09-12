// set vars
x = 100;
y = 1200;

// Inherit the parent event
event_inherited();

// set start vars
dropping = false;

start_scale = 2;
image_xscale = start_scale;
image_yscale = start_scale;
increment_spd = 30;
xspd = 1;
yspd = 1;

// set end vars
xTo = 400;
yTo = 64 * 8.45;

// set timer
var seconds = 5;
alarm[0] = seconds * 60;