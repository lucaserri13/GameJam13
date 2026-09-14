sprite_index = spr_turret_stronger

if strongturrethealth = 2 image_alpha = 0.5
else if strongturrethealth = 1 image_alpha = 0.25


if not obj_player.charging and (place_meeting(x, y, obj_camerafollow) or place_meeting(x, y, obj_playerdirection))
{
	sprite_index = spr_playerdirection
	obj_player.cangethit = 0
	obj_player.alarm[1] = 40
		
	if strongturrethealth != 1 
	{
	audio_play_sound(snd_hitenemy, 20, 0, 1, 0, random_range(0.9, 1.1))
	strongturrethealth--	
	}
	else 
	{
		audio_play_sound(snd_killenemy, 25, 0, 1, 0, random_range(0.9, 1.1))
		global.temporarypoints += 4
		instance_destroy(self)
	}
}

if distance_to_object(obj_player) <= 440 and ready
{
ready = 0
alarm[0] = 1
}

if willshoot
instance_create_layer(x, y, "Enemies", obj_bullet_stronger, {bulletx: turretx, bullety: turrety})

if !strongturrethealth = 2
image_alpha = 50