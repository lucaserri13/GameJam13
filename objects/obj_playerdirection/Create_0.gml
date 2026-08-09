distance = 0
audio_play_sound(snd_button, 5, 0, 0.8, 0, random_range(0.8, 1.1))

var _dir = point_direction(x, y, mouse_x, mouse_y);

xadd  = lengthdir_x(distance, _dir);
yadd = lengthdir_y(distance, _dir);