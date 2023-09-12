// spawn start items
instance_create_layer(x, y, "bg", o_cutscene_mountain);
instance_create_layer(x, y, "bg", o_clouds_upper_l);
instance_create_layer(x, y, "bg", o_clouds_upper_r);

// set timers
alarm[0] = 60 * 1;
alarm[1] = 60 * 2;
alarm[2] = 60 * 3;
alarm[3] = 60 * 5;
alarm[4] = 60 * 8;
alarm[5] = 60 * 15;
alarm[6] = 60 * 18;

// play intro music
audio_sound_gain(o_music.music_playing, 0, 0);
audio_play_sound(m_intro, 1000, true);
audio_sound_gain(m_intro, 0, 0);
audio_sound_gain(m_intro, o_music.music_volume, 4000);

// draw alpha for text
fade_text = false;
alpha = 0;