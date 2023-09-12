// create
w = display_get_gui_width();
h = display_get_gui_height();

enum TRANS_MODE {
	OFF = 5,
	NEXT,
	GOTO,
	RESTART,
	INTRO
}

mode = TRANS_MODE.INTRO;
percent = 1;
target = room;