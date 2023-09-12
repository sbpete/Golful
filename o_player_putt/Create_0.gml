o_game.current_level = 1;

// Inherit the parent event
event_inherited();

// player states
enum PUTTPLAYERSTATE {
	FREE,
	PUTTABLE,
	PUTTED
}
state = PUTTPLAYERSTATE.FREE;

// should not have to go here here but does
if (!audio_is_playing(o_music.music_playing)) {
	audio_play_sound(o_music.music_playing, 1000, true);
	audio_sound_gain(o_music.music_playing, 0, 0);
	audio_sound_gain(o_music.music_playing, o_music.music_volume, 1000);
}