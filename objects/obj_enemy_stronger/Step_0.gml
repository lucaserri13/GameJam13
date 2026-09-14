sprite_index = spr_enemy_stronger


if not obj_player.charging and (place_meeting(x, y, obj_camerafollow) or place_meeting(x, y, obj_playerdirection))
{
	sprite_index = spr_playerdirection
	obj_player.cangethit = 0
	obj_player.alarm[1] = 40
		
	if enemyhealth != 1 
	{
	audio_play_sound(snd_hitenemy, 20, 0, 1, 0, random_range(0.9, 1.1))
	enemyhealth--
	}
	else
	{
		audio_play_sound(snd_killenemy, 25, 0, 1, 0, random_range(0.9, 1.1))
		global.temporarypoints += 3	
		instance_destroy(self)
	}
}


var _bouncespeed = 6

if enemyhealth = 2 
image_alpha = 1
else 
{
	image_alpha = 0.5
	_bouncespeed = 4
}

move_bounce_solid(0)

if distance_to_object(obj_wall) <= 4 or distance_to_object(obj_enemy_wall) <= 4
if distance_to_object(obj_player) <= 550
audio_play_sound(snd_strongbounce, 10, 0, 0.8, 0, random_range(0.9, 1.1))


if global.chargeslowdown _bouncespeed = _bouncespeed/2
speed = _bouncespeed

var _bouncedistance = 32

if x >= room_width - _bouncedistance
{
if distance_to_object(obj_player) <= 550
audio_play_sound(snd_strongbounce, 0, 0, 0.8, 0, random_range(0.9, 1.1))
x = room_width - _bouncedistance
hspeed = -hspeed
}

if  x <= _bouncedistance
{
if distance_to_object(obj_player) <= 550
audio_play_sound(snd_strongbounce, 0, 0, 0.8, 0, random_range(0.9, 1.1))
x = _bouncedistance
hspeed = -hspeed
}

if y >= room_height - _bouncedistance 
{
if distance_to_object(obj_player) <= 550
audio_play_sound(snd_strongbounce, 0, 0, 1, 0, random_range(0.9, 1.1))
y = room_height - _bouncedistance 
vspeed = -vspeed
}

if  y <= _bouncedistance
{
if distance_to_object(obj_player) <= 550
audio_play_sound(snd_strongbounce, 0, 0, 1, 0, random_range(0.9, 1.1))
y = _bouncedistance
vspeed = -vspeed
}