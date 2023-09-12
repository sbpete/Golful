// get width and height
var cam_w = view_w/zoom;
var cam_h = view_h/zoom;
var w_half = cam_w / 2;
var h_half = cam_h / 2;

// update camera view
camera_set_view_pos(cam,x-w_half,y-h_half);
camera_set_view_size(cam,cam_w,cam_h);

// update destination
if (instance_exists(follow)) {
	xTo = follow.x;
	yTo = follow.y - 32;
}

// update object position
x += (xTo - x) / 10;
y += (yTo - y) / 10;

// focus if zoomed
if (zoom > 1) {
	// update destination
	if (instance_exists(follow)) {
		x = follow.x;
		y = follow.y - 32;
	}
}

// clamp cam to sides of room
x = clamp(x,w_half+buff,room_width-w_half-buff);
y = clamp(y,h_half+buff,room_height-h_half-buff);

// screen shake
x += random_range(-shake_remain,shake_remain);
y += random_range(-shake_remain,shake_remain);
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));