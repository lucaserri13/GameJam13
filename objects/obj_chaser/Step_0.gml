if instance_exists(obj_player)
if obj_player.charging
{
chasespeed += 0.06
image_index = 1
if distance_to_object(obj_player) <= 900
move_towards_point(obj_player.x, obj_player.y, chasespeed )
}
else
{
	chasespeed = 0
	speed = 0
	image_index = 0
}




