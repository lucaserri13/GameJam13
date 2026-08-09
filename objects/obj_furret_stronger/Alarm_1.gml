bulletindicator = 0
global.playerpositionx = obj_player.x
global.playerpositiony = obj_player.y
if distance_to_object(obj_player) <= 500
audio_play_sound(snd_furretshoot, 30, 0, 1, 0, random_range(0.9, 1.1))
willshoot = 1
image_blend = c_black
alarm[2] = 60*1