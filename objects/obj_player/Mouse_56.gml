

if cancel 
{
	cancel = 0
	exit
}


if cancharge
{
global.chargeslowdown = 0

// Charge Recover.
alarm[0] = 60
if global.recoverfaster
alarm[0] = 30

if instance_exists(obj_camerafollow)
{
if obj_camerafollow.inside
alarm[0] = 1
}

charging = 0
cancharge = 0
}



