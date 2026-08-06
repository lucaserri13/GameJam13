if not obj_player.charging and place_meeting(x, y, obj_playerdirection)
instance_destroy(self)

var _speed = 2
if global.chargeslowdown _speed = _speed/2

if instance_exists(obj_player)
move_towards_point(obj_player.x, obj_player.y, _speed )

if global.collapse
{ 
	instance_create_layer(xstart, ystart, "Enemies", obj_enemy_stronger)
	instance_destroy(self)
}