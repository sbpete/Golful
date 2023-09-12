// set vars
scale = 4;
price = 2;

isHat = false;

// states
enum BUYSTATE {
	NORMAL,
	HOVER,
	CLICKED,
	ACTION
}
mode = BUYSTATE.NORMAL;