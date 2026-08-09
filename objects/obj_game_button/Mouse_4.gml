audio_play_sound(snd_button, 10, 0, 1, 0, random_range(0.9, 1.1))

if play
room_goto(rm_tutorial)
else if quit
game_end()
else 
{
	global.collapse = 0
	global.chargeslowdown = 0
	global.chargefaster = 0
	global.chargefurther = 0
	global.recoverfaster = 0
	global.runfaster = 0
	global.points = 0
	global.temporarypoints = 0
	global.deaths = 0
	global.killobjective = 0
	global.nextlevel = 0
	global.totaldeaths = 0
	global.tutorial = 0
	room_goto(rm_main_menu)
}