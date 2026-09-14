/// @description FIRST(1) - white indicator

// first - white indicator
image_blend = c_navy
bulletindicator = 1
turretx = obj_player.x
turrety = obj_player.y
audio_play_sound(snd_furretprepare, 30, 0, 1, 0, random_range(0.9, 1.1))
alarm[3] = 30*1