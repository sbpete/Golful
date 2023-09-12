// Inherit the parent event
event_inherited();

// change invert according to toggle
if (toggle and !o_game.invert_putting) {
	o_game.invert_putting = true;
}
if (!toggle and o_game.invert_putting) {
	o_game.invert_putting = false;
}