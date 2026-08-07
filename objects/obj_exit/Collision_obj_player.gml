global.collapse = 0

if room = rm_intermission
{
	if global.nextlevel = 1
	room_goto(rm_level_1)
	if global.nextlevel = 2
	room_goto(rm_level_2)
	if global.nextlevel = 3
	room_goto(rm_level_3)
	if global.nextlevel >= 4
	room_goto(rm_template)
}
	else
	room_goto(rm_intermission)


