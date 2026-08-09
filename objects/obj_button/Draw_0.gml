draw_self()

draw_set_halign(1)
draw_set_valign(1)

var _up = 100
if chargefaster
{
draw_text_transformed_colour(x, (y - _up) - 40,"Dash Rapido", 1.5, 1.5, 0, c_white, c_white, c_white, c_white, 255)
draw_text_transformed_colour(x, (y - _up),"15 Pontos", 1.2, 1.2, 0, c_white, c_white, c_white, c_white, 255)
}

else if chargefurther
{
draw_text_transformed_colour(x, (y - _up) - 40,"Dash Longe", 1.5, 1.5, 0, c_white, c_white, c_white, c_white, 255)
draw_text_transformed_colour(x, (y - _up),"5 Pontos", 1.2, 1.2, 0, c_white, c_white, c_white, c_white, 255)
}

else if recoverfaster
{
draw_text_transformed_colour(x, (y - _up) - 40,"Cooldown Menor", 1.5, 1.5, 0, c_white, c_white, c_white, c_white, 255)
draw_text_transformed_colour(x, (y - _up),"20 Pontos", 1.2, 1.2, 0, c_white, c_white, c_white, c_white, 255)
}

else if runfaster
{
draw_text_transformed_colour(x, (y - _up) - 40,"Mais Velocidade", 1.5, 1.5, 0, c_white, c_white, c_white, c_white, 255)
draw_text_transformed_colour(x, (y - _up),"10 Pontos", 1.2, 1.2, 0, c_white, c_white, c_white, c_white, 255)
}