// approach normal scale
var seconds = 8;
if (percent < 1) percent += 1/(60 * seconds);

image_xscale = start_scale - (animcurve_channel_evaluate(curve, percent) * (start_scale - scale_approach));
image_yscale = start_scale - (animcurve_channel_evaluate(curve, percent) * (start_scale - scale_approach));
x = start_x + (animcurve_channel_evaluate(curve, percent) * (xTo - start_x));
y = start_y + (animcurve_channel_evaluate(curve, percent) * (yTo - start_y));