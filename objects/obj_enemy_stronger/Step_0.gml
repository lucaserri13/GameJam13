if not obj_player.charging and place_meeting(x, y, obj_playerdirection)
{

	obj_player.cangethit = 0
	obj_player.alarm[1] = 40
		
	if enemyhealth != 1 
	enemyhealth--	
	else
	{
		global.points += 2
		instance_destroy(self)
	}
}



if enemyhealth = 2 image_index = 0
else image_index = 1

move_bounce_solid(0)
var _bouncespeed = 6
if global.chargeslowdown _bouncespeed = _bouncespeed/2
speed = _bouncespeed

var _bouncedistance = 32
if x >= room_width - _bouncedistance or x <= _bouncedistance
hspeed = -hspeed

if y >= room_height - _bouncedistance or y <= _bouncedistance
vspeed = -vspeed
