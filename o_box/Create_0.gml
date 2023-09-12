// z vars
if (respawn) {
	z = 2000;
} else {
	z = 128; /*z pos*/
}
zfloor = 0; /*z pos of floor beneath you*/
zspeed = 9; /*speed of jump*/
zgrav = 0; /*changes, applies downforce*/

// box vars
ht = 64; // height (for offset)
move_amnt = 64;

atop_block = 0;

// jump pad
zlaunch = false;
zlaunchspd = 0;

// moving vars
moving = false;
wind = false;
move_timer = 0;

xTo = x;
yTo = y;

x_add = 0;
y_add = 0;
x_wind = 0;
y_wind = 0;

// for respawn
x_org = x;
y_org = y;