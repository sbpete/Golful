// goto next room if playtesting
if (o_transition.mode == TRANS_MODE.OFF) and (global.playtest) {
	transition(TRANS_MODE.NEXT);
}
if (o_transition.mode == TRANS_MODE.OFF) and (global.playtest_levels)
	and !array_contains(global.cutscenes, room) 
	and !array_contains(global.menus, room) 
	and !array_contains(level_screens, room){
	win_action();
}