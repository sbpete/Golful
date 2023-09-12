// Inherit the parent event
event_inherited();

var seconds = 16;
percent -= 1/(60 * seconds);

seconds = 4;
if (image_alpha > 0) image_alpha -= 1/(60 * seconds);
// wave up and down
y += wave(-8, 8, 2, 0);