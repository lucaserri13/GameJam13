draw_self()
if obj_player.charging
{
	
global.xthing = obj_player.x + xadd;
global.ything = obj_player.y + yadd;
draw_sprite(spr_player,0,global.xthing, global.ything)

}



