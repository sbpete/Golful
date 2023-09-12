// goto previous room if playtesting
if (o_transition.mode == TRANS_MODE.OFF) and (global.playtest) {
	transition(TRANS_MODE.GOTO, room_previous(room));
}