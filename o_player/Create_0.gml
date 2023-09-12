/// variables
// xy vars
move_spd = 4; /*xy speed*/
hmove = 0;
vmove = 0;
hspd = 0;
vspd = 0;
max_putt_spd = 600;
min_putt_spd = 100;

x_add = 0; // for moving platforms
y_add = 0;
base_hspd = 0;
base_vspd = 0;

x_wind = 0; // for wind
y_wind = 0;

// z vars
z = 128; /*z pos*/
zfloor = 0; /*z pos of floor beneath you*/
zspeed = 10; /*speed of jump*/
zgrav = 0; /*changes, applies downforce*/
zjump = false; /*if in air*/
camrot_spd = 3; /*speed camera rotates*/
canjump = 0;
atop_block = 0;
instbelow = -1; // usually

// jump pad
zlaunch = false;
zlaunchspd = 0;

rotatable = false;
wind = false; // for working w boxes in smae script
won = false;
dead = false;

// graphics
z_offset = 0;
foot1 =
{
    x : x,
    y : y,
	z : z
};
foot2 =
{
    x : x,
    y : y,
	z : z
};
set_feet();

// player states
enum PLAYERSTATE {
	FREE,
	PUTTABLE,
	PUTTED
}
state = PLAYERSTATE.FREE;