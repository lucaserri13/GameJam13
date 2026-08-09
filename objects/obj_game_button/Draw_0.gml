draw_self()

draw_set_halign(1)
draw_set_valign(1)

if play
draw_text_transformed_colour(x, y, "JOGAR", 2, 2, 0, c_black, c_black, c_black, c_black, 255)
else if quit
draw_text_transformed_colour(x, y, "SAIR", 2, 2, 0, c_black, c_black, c_black, c_black, 255)
else 
draw_text_transformed_colour(x, y, "VOLTAR AO MENU", 2, 2, 0, c_black, c_black, c_black, c_black, 255)