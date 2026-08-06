if obj_player.charging
{
	var _dir = point_direction(x, y, mouse_x, mouse_y);
	if distance < 320
	distance += 3.2
	xadd = lengthdir_x(distance, _dir);
	yadd = lengthdir_y(distance, _dir);
	image_angle = _dir
	if image_xscale < 10
	image_xscale += 0.1
}
	else
	{
		
		 obj_player.x = obj_player.x + xadd;
		 obj_player.y = obj_player.y + yadd;
		 distance = 0
		instance_destroy()
	}
	
if place_meeting(x, y, obj_enemy) image_blend = c_yellow
else if place_meeting(x, y, obj_enemy_stronger) image_blend = c_aqua
else image_blend = c_white