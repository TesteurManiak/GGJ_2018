///player die
audio_play_sound(hurt, 1, false);
audio_stop_sound(lava_sound);
audio_stop_sound(tower);
audio_stop_sound(music_crisis);
instance_destroy();
room_goto_next();
