// Inherit the parent event
event_inherited();

// animate
if (mode == BUTTONSTATE.CLICKED || mode == BUTTONSTATE.HOVER) {
	image_index = 1;
} else {
	image_index = 0;
}