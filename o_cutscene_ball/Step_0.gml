// Inherit the parent event
event_inherited();

var seconds = 12;
percent += 1 / (60 * seconds); // on top of percent

// dropping state
if (dropping) {
	image_xscale = scale_approach;	
	image_yscale = scale_approach;	
	percent += 1 / (60 * seconds); // on top of top of percent 
}