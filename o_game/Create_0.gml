// states
global.debug = false;
global.testing = false;
global.cinematic = false;
global.control = true;
global.playtest = false;
global.playtest_levels = false;
global.saving = true;
global.steam_api = false;

// important vars
global.z = 315; /* direction cam is facing, global z controls the z axis in which objects are drawn globally */
global.coins = 3;
// keyboard & mouse = 0, controller = 1
global.controller = 0;
// level tracking
current_game_timer = 0;
current_putts = 0;
current_level = 0;
latest_level = 0;
quittable = false;
coin_collected_temp = false;
display_hint = false;
hint_a = 0;
hint_a_changespd = 0.025;

// game colors
stage_color_data();
floor_col = global.stage1_colors.floor_col;
grass_col = global.stage1_colors.grass_col;
grass_col_light = global.stage1_colors.grass_col_light;
bg = instance_create_layer(x, y, "Instances", o_bg);
bg.sprite_index = s_clouds;

// create cursor and buttons for controller navigation
instance_create_layer(mouse_x, mouse_y, "Instances", o_cursor);
buttons = [];
current_button = -1;

// cosmetics and skins
hats = [];
hat_data(); // load in hats
hats_unlocked = [];
if (global.playtest) unlock_all_hats(); // unlock all levels

/*skins = [c_white];
skins_unlocked = [c_white];*/

// store
store_hats = [];
hat_current = noone;
skin_current = c_white;

// level stats
levels = [];
level_data(); // load in levels
if (global.playtest) unlock_all_levels(); // unlock all levels
// last levels in stage
global.last_levels = [rm_level_4, rm_level_28, rm_level_53, rm_level_56];

// room groupings
global.menus = [rm_shop, rm_wardrobe, rm_settings, rm_init];
global.cutscenes = [rm_controller, rm_intro, rm_outro, rm_credits];
// level screens
level_screens = [rm_level_tutorial, rm_level_select1, rm_level_select2, rm_level_select3];
level_screens_unlocked = [
{
	room : rm_level_tutorial,
	unlocked : true
},
{
	room : rm_level_select1,
	unlocked : false
},
{
	room : rm_level_select2,
	unlocked : false
},
{
	room : rm_level_select3,
	unlocked : false
},
];
current_level_screen = 0;

// create borders for rooms
create_borders();

// load previous data
load_game();

// init
alarm[0] = 5;

// settings
invert_putting = false;
angle_assist = false;