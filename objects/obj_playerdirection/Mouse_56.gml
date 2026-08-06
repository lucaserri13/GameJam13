if not (place_meeting(x, y, obj_enemy) 
or place_meeting(x, y, obj_enemy_stronger))
and not global.collapse

{
instance_create_depth(x, y, obj_player.depth + 20, obj_crack)
}

else obj_player.alarm[0] = 30