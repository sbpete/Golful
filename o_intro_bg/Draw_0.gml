// increment percent
var seconds = 8;
if (percent < 1) percent += 1/(60 * seconds);

// top color                                                                                                               ,
color1 = merge_color(Bcolor1, Bcolor2, percent);

// bottom color
color2 = merge_color(Bcolor3, Bcolor4, percent);

// draw bg
draw_rectangle_color(0,0,room_width,room_height,color1,color1,color2,color2,0)