if room = rm_main_menu or room = rm_bad_end or room = rm_good_end or room = rm_neutral_end exit

draw_set_halign(fa_left)

draw_text_transformed_colour(40, 40, "Pontos Totais: " + string(global.points), 2, 2, 0, c_white, c_white, c_white, c_white, 255)
draw_text_transformed_colour(40, 40*2, "Mortes Totais: " + string(global.totaldeaths), 2, 2, 0, c_white, c_white, c_white, c_white, 255)

// Temporários

var _tempposition = (620 / 2)
draw_text_transformed_colour(_tempposition*2, 40, "Pontos Temporarios: " + string(global.temporarypoints), 2, 2, 0, c_white, c_white, c_white, c_white, 255)
draw_text_transformed_colour(_tempposition*2, 40*2, "Mortes Temporarias: " + string(global.deaths), 2, 2, 0, c_white, c_white, c_white, c_white, 255)

if !(room == rm_intermission)
	
	if !(room == rm_finale)
		if ((global.temporarypoints - global.deaths) <= 0)
		draw_text_transformed_colour(_tempposition - 20, 850, "Recompensa Esperada: 0 (" + string(global.temporarypoints - global.deaths) + ")", 2, 2, 0, c_white, c_white, c_white, c_white, 255)
			else
			draw_text_transformed_colour(_tempposition, 850, "Recompensa Esperada: " + string(global.temporarypoints - global.deaths), 2, 2, 0, c_white, c_white, c_white, c_white, 255)
			
	else 
	draw_text_transformed_colour(_tempposition + 70, 850, "Objetivo: " + string(global.killobjective) + " / 28", 2, 2, 0, c_white, c_white, c_white, c_white, 255)
