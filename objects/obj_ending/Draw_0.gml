draw_set_halign(1)
draw_set_valign(1)

var _message = "Voce mandou bem!"
if room = rm_neutral_end
{
	if (global.totaldeaths >= 15) and (global.killobjective >= 28)
	{
		_message = "Voce morreu demais."
	}
	else if (global.totaldeaths <= 15) and (global.killobjective <= 28)
	_message = "Voce nao atingiu seu objetivo."
}
else if room = rm_bad_end
_message = "Voce fracassou totalmente."

draw_text_transformed_colour(x, 60, _message, 3, 3, 0, c_white, c_white, c_white, c_white, 255)