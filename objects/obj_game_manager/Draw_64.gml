if room = rm_main_menu or room = rm_bad_end or room = rm_good_end or room = rm_neutral_end exit

draw_set_halign(fa_left)

draw_text_transformed_colour(40, 40, "Pontos: " + string(global.points), 2, 2, 0, c_white, c_white, c_white, c_white, 255)
draw_text_transformed_colour(40, 40*2, "Mortes Totais: " + string(global.totaldeaths), 2, 2, 0, c_white, c_white, c_white, c_white, 255)

if room = rm_finale
draw_text_transformed_colour(40, 40*3, "Objetivo: " + string(global.killobjective) + " / 28" , 2, 2, 0, c_white, c_white, c_white, c_white, 255)

