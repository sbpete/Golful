event_inherited();

// if powered
if (powered) {
	if (!reversed) { // if reversed
		if (!button.pressed) { // and button pressed
			spawn_spike();
		}
	} else { // do opposite if reversed
		if (button.pressed) {
			spawn_spike();
		}
	}
}