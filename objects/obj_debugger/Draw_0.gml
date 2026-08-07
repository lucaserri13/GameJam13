var _debugx = obj_player.x
var _debugy = obj_player.y
var _offset = 45

draw_set_halign(1)
draw_set_valign(1)
draw_text(_debugx, _debugy - (_offset * 3), "Charge Faster: " + string(global.chargefaster))
draw_text(_debugx, _debugy - (_offset * 2), "Charge Further: " + string(global.chargefurther))
draw_text(_debugx, _debugy - _offset, "Recover Faster: " + string(global.recoverfaster))
draw_text(_debugx, _debugy + _offset, "Alarm: " + string(obj_player.alarm[0]))

draw_set_halign(0)
draw_set_valign(0)


