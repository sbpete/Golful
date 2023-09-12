///update depth 3d
scr_depth_3d_z();
if (z >= 64) depth -= 16; // if on ground z changes

// block collision
on_block();

var shake_amnt = 1.5;
var shake_time = 0.15;
x += wave(-shake_amnt, shake_amnt, shake_time, 0);
y -= wave(-shake_amnt, shake_amnt, shake_time, 0);

// gravity
gravty();

// shake screen
var shake_inc = 1.04;
shake_magnitude *= shake_inc;
screen_shake(shake_magnitude, 1);