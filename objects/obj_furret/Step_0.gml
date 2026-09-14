sprite_index = spr_turret

if shoottimer <= 60
image_blend = c_black
else image_blend = c_white

if not obj_player.charging and (place_meeting(x, y, obj_camerafollow) or place_meeting(x, y, obj_playerdirection))
{
	sprite_index = spr_playerdirection
	obj_player.cangethit = 0
	obj_player.alarm[1] = 40
		
	if turrethealth != 1
	{
	audio_play_sound(snd_hitenemy, 20, 0, 1, 0, random_range(0.9, 1.1))
	image_alpha = image_alpha/2
	turrethealth--
	}
	else 
	{
		global.temporarypoints += 2
		audio_play_sound(snd_killenemy, 25, 0, 1, 0, random_range(0.9, 1.1))
		
		if room = rm_finale
		global.killobjective++
	
		instance_destroy(self)	
	}
}



var _timedecreaserate = 2

if global.chargeslowdown
{
	_timedecreaserate = 1.5
}

if global.collapse
{ 
	if turrethealth = 1
	instance_create_layer(xstart, ystart, "Enemies", obj_furret_stronger, {strongturrethealth : 2})
	else instance_create_layer(xstart, ystart, "Enemies", obj_furretturning)
	instance_destroy(self)
}


if not shoottimer <= 0
shoottimer -= _timedecreaserate
else canshoot = 1

if instance_exists(obj_player)
if distance_to_object(obj_player) <= 500 and canshoot
{
	audio_play_sound(snd_turretshoot, 10, 0, 1, 0, random_range(0.9, 1.1))
	instance_create_layer(x, y, "Enemies", obj_bullet)
	canshoot = 0
	shoottimer = 60*4
}


