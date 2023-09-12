event_inherited();

// if powered
if (powered)
{
	if (!reversed) {
		if (button.pressed) { // if not button pressed
			spawn_unspike();
		}
	} else {
		if (!button.pressed) { // if not button pressed
			spawn_unspike();
		}
	}
}