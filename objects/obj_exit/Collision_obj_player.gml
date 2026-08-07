if !room = rm_intermission
{
	if global.collapse
	{
		global.collapse = 0
		room_goto(rm_intermission)
	}
}
	else room_goto(rm_template)
