steam_update();

// if in a level
if (current_level != 0) {
	current_game_timer++;
}

// decide between controller or keyboard
decide_input();

// quit and restart code
quit_restart()

// navigate menus
controller_menus();

// check achievements
check_achievements();