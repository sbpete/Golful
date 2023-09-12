scr_depth_3d_z();
depth -= 128; // on top of blocks

// draw wind at proper height
x = wind.x + lengthdir_x(z - 32, -global.z + 90);
y = wind.y + lengthdir_y(z - 32, -global.z + 90);