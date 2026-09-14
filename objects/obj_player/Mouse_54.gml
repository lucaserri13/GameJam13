instance_destroy(obj_camerafollow)

if charging and !cancel
{
	cancel = 1
	charging = 0
	global.chargeslowdown = 0	
	instance_destroy(obj_playerdirection)
	cancharge = 1
}
