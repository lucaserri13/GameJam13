
if instance_exists(obj_camerafollow)
if !obj_camerafollow.inside
if not obj_player.charging and (place_meeting(x, y, obj_camerafollow) or place_meeting(x, y, obj_playerdirection))
{
	obj_player.cangethit = 0
	obj_player.alarm[1] = 40
	global.temporarypoints++
	audio_play_sound(snd_killenemy, 25, 0, 1, 0, random_range(0.9, 1.1))
	
	if room = rm_finale
	global.killobjective++
	
	instance_destroy(self)	
}



if instance_exists(obj_player)
{
	if distance_to_object(obj_player) <= 500
	{
		var _speed = 2
		if global.chargeslowdown _speed = _speed/2

		var dis = point_distance(x, y, obj_player.x, obj_player.y);
		var dir = point_direction(x, y, obj_player.x, obj_player.y);

		var move_spd = min(_speed, dis);
		var hsp = lengthdir_x(move_spd, dir);
		var vsp = lengthdir_y(move_spd, dir);

		if (place_meeting(x + hsp, y, obj_wall)) {
		    if (!place_meeting(x, y, obj_wall)) {
		        while (!place_meeting(x + sign(hsp), y, obj_wall)) {
		            x += sign(hsp);
		        }
		    }
		    hsp = 0;
		}
		x += hsp;

		if (place_meeting(x, y + vsp, obj_wall)) {
		    if (!place_meeting(x, y, obj_wall)) {
		        while (!place_meeting(x, y + sign(vsp), obj_wall)) {
		            y += sign(vsp);
		        }
		    }
		    vsp = 0;
		}
		y += vsp;
	}
}
	else speed = 0

if global.collapse
{ 
	instance_create_layer(xstart, ystart, "Enemies", obj_enemyturning)
	instance_destroy(self)
}