if not obj_player.charging and place_meeting(x, y, obj_playerdirection)
{
	obj_player.cangethit = 0
	obj_player.alarm[1] = 30
	instance_destroy(self)
}

var _speed = 2
if global.chargeslowdown _speed = _speed/2

if instance_exists(obj_player)
if distance_to_object(obj_player) <= 500
move_towards_point(obj_player.x, obj_player.y, _speed )
else speed = 0

if global.collapse
{ 
	instance_create_layer(xstart, ystart, "Enemies", obj_enemy_stronger)
	instance_destroy(self)
}