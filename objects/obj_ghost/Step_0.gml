var _speed = 1
if global.chargeslowdown _speed = _speed/2

if instance_exists(obj_player)
move_towards_point(obj_player.x, obj_player.y, _speed )