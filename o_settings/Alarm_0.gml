// add to buttons array
with (o_game) {
	array_insert(buttons, array_length(buttons), o_slider_music.button);
	array_insert(buttons, array_length(buttons), o_slider_sfx.button);
	array_insert(buttons, array_length(buttons), o_slider_cursor.button);
	array_insert(buttons, array_length(buttons), o_toggle_fullscreen);
	array_insert(buttons, array_length(buttons), o_toggle_assist);
	array_insert(buttons, array_length(buttons), o_toggle_invert);
}