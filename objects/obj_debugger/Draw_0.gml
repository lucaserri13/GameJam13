var _debugx = obj_player.x
var _debugy = obj_player.y
var _offset = 45

draw_set_halign(1)
draw_set_valign(1)
draw_text(_debugx, _debugy - (_offset * 3), "deaths: " + string(global.totaldeaths))
draw_text(_debugx, _debugy - (_offset * 2), "objective: " + string(global.killobjective))
draw_text(_debugx, _debugy - _offset, "Recover Faster: " + string(global.recoverfaster))
draw_text(_debugx, _debugy + _offset, "Alarm: " + string(obj_player.alarm[0]))
draw_text(_debugx, _debugy + (_offset * 2), "Points: " + string(global.points))
draw_text(_debugx + _offset, _debugy, "Nível próximo: " + string(global.nextlevel))
draw_text(_debugx - (_offset * 2), _debugy, "colapso: " + string(global.collapse))

draw_set_halign(0)
draw_set_valign(0)


