if obj_player.charging
{
	var _dir = point_direction(x, y, mouse_x, mouse_y);
	
	// Charge Further
	var _gofar = 1
	if global.chargefurther
	_gofar = 1.3
	
	var _gofast = 1
	if global.chargefaster
	_gofast = 1.6
	
	if distance < 320 * _gofar
	// Charge Speed
	distance += 3.2 * _gofast
	
	xadd = lengthdir_x(distance, _dir);
	yadd = lengthdir_y(distance, _dir);
	image_angle = _dir
	
	// Charge Further
	if image_xscale < 10 * _gofar
	// Charge Speed
	image_xscale += 0.1 * _gofast
	
}
	else
	{

		 obj_player.x = obj_player.x + xadd;
		 obj_player.y = obj_player.y + yadd;
		 distance = 0
		 
		
		 
		if not room = rm_intermission
		{
			if not place_meeting(x, y, obj_enemy) and not place_meeting(x, y, obj_furret) and not global.collapse
			instance_create_depth(x, y, obj_player.depth + 20, obj_crack)
			else
			{
				obj_player.alarm[0] = 30	
				if global.recoverfaster
				obj_player.alarm[0] = 15
			}
		}
		
		instance_destroy()
	}
	
if place_meeting(x, y, obj_enemy) or place_meeting(x, y, obj_furret)image_blend = c_yellow
else if place_meeting(x, y, obj_enemy_stronger) or  place_meeting(x, y, obj_furret_stronger) image_blend = c_aqua
else image_blend = c_white