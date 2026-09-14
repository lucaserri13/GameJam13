x = obj_player.x
y = obj_player.y

if obj_player.charging
{
	var _dir = point_direction(x, y, mouse_x, mouse_y);
	
	// Charge Further
	var _gofar = 1
	if global.chargefurther
	_gofar = 1.3
	
	var _gofast = 1.2
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
		 if !obj_camerafollow.inside
		 {
		 obj_player.x = obj_player.x + xadd;
		 obj_player.y = obj_player.y + yadd;
		 }
		 
		 distance = 0
		 
		
		 
		if room != rm_intermission and room != rm_finale
		{
			if global.collapse = 0
			{
				if !obj_camerafollow.inside
				instance_create_depth(x, y, obj_player.depth + 20, obj_crack)
			}
			else
			{
				obj_player.alarm[0] = 30	
				if global.recoverfaster
				obj_player.alarm[0] = 15
			}
		}
		
		if !obj_camerafollow.inside
		{
		instance_create_layer(obj_player.x, obj_player.y, "Enemies", obj_explosion)
		instance_create_layer(x, y, "Enemies", obj_explosion)
		instance_create_layer(x, y, "Player", obj_dash, {dashscale : image_xscale,
																   dashrotate: image_angle})
		}
		
		instance_destroy()
	}

if !obj_camerafollow.inside
{
if place_meeting(x, y, obj_enemy) or place_meeting(x, y, obj_furret) or place_meeting(x, y, obj_enemy_stronger) or  place_meeting(x, y, obj_furret_stronger) image_blend = c_yellow
}
else image_blend = c_white

