draw_self()
if obj_player.charging
{
	
global.xthing = obj_player.x + xadd;
global.ything = obj_player.y + yadd;

if !obj_camerafollow.inside
draw_sprite(spr_player,0,global.xthing, global.ything)
else draw_sprite(spr_camera,0,global.xthing, global.ything)

}



