if not obj_player.charging and place_meeting(x, y, obj_playerdirection)
instance_destroy(self)

var _speed = 3
if global.chargeslowdown _speed = _speed/2

move_towards_point(obj_player.x, obj_player.y, _speed )