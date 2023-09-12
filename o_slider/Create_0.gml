// set width
width = 768;

// create button
button = instance_create_layer(x + (width * value), y, "Instances", o_slider_button);
button.slider = id;

// update width
image_xscale = width;