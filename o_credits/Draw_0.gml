// scroll up
y += -1;

// set up text
var v_sep = room_height;

set_text(c_white, f_credits, fa_center, fa_top);

var size = array_length(credits);
for (var i = 0; i < size; i++)
{
    draw_text(x, y + (v_sep * i), credits[i]);
}