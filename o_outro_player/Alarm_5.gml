// transition room
room_goto(rm_credits);

// goto credits
audio_sound_gain(m_outro, 0, 1000);
audio_play_sound(m_track1, 1000, true);
audio_sound_gain(m_track1, 0, 0);
audio_sound_gain(m_track1, o_music.music_volume, 1000);