var _timedecreaserate = 2
image_blend = c_white
if global.chargeslowdown
{
	_timedecreaserate = 1.5
}

if global.collapse
{ 
	instance_create_layer(xstart, ystart, "Enemies", obj_turret_stronger)
	instance_destroy(self)
}


if not shoottimer <= 0
shoottimer -= _timedecreaserate
else canshoot = 1

if instance_exists(obj_player)
if distance_to_object(obj_player) <= 500 and canshoot
{
	instance_create_layer(x, y, "Enemies", obj_bullet)
	canshoot = 0
	shoottimer = 60*4
}


