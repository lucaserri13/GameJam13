if not place_meeting(x, y, obj_enemy) and not global.collapse
		{
		instance_create_depth(x, y, obj_player.depth + 20, obj_crack)
		}