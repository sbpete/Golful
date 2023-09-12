// Inherit the parent event
event_inherited();
// go to level
if place_meeting(x, y, o_menu_player) and (o_game.levels[level_number - 1].unlocked) and (!transitioning) {
	transitioning = true;
	transition(TRANS_MODE.GOTO, level);
	// set game vars
	o_game.current_level = level_number;
	o_game.latest_level = level_number;
	o_game.current_game_timer = 0;
	o_game.current_putts = 0;
}