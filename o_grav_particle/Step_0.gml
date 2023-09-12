scr_depth_3d_z();

// slow down
image_alpha -= 0.01;
hspd *= 0.95;
vspd *= 0.95;
zspd -= zgrav;

x += hspd;
y += vspd;
z += zspd;

if (z < zfloor) z = zfloor;
if (image_alpha <= 0) instance_destroy();

zfloor = -10000
// update zfloor
if place_meeting(x, y, o_floor_par) {
	instbelow = instance_place(x, y, o_floor_par);
	zfloor = instbelow.z;
} 