if not obj_player.charging and place_meeting(x, y, obj_playerdirection)
{
		show_message("test")
	obj_player.cangethit = 0
	obj_player.alarm[1] = 40
		
	if strongturrethealth != 1 
	strongturrethealth--	
	else instance_destroy(self)
}


if willshoot
	instance_create_layer(x, y, "Enemies", obj_bullet_stronger)