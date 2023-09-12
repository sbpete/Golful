// Inherit the parent event
event_inherited();

fade = 0; // for menu
fade_1 = 0; // for coin 1 icon
fade_2 = 0; // for coin 2 icon
fade_3 = 0; // for coin 3 icon
transitioning = false;

// change alpha if unlocked and 
alpha = 1;
if (!o_game.levels[level_number - 1].unlocked) {
	alpha = 0.6;
}