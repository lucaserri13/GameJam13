if image_alpha != 0

{
global.points += global.temporarypoints

if global.points >= 0
global.points -= (global.deaths * 2)

global.temporarypoints = 0
global.deaths = 0
audio_play_sound(snd_escaped, 50, 0, 1, 0, random_range(0.9, 1.1))
}

if room = rm_intermission
{
	
	
	if global.nextlevel = 1
	room_goto(rm_level_1)
	if global.nextlevel = 2
	room_goto(rm_level_2)
	if global.nextlevel = 3
	room_goto(rm_level_3)
	if global.nextlevel = 4
	room_goto(rm_finale)
}
	else
	{
		if room != rm_finale
		{
		if global.collapse = 1 
		{
			global.collapse = 0
			global.nextlevel++
			room_goto(rm_intermission)
		}
		}
			else
			{
			if global.killobjective >= 24 and global.totaldeaths < 15
			room_goto(rm_good_end)		
			else if (global.killobjective >= 24 and global.totaldeaths >= 15)
			or (global.killobjective < 24 and global.totaldeaths < 15)
			room_goto(rm_neutral_end)	
			else room_goto(rm_bad_end)
			}
		
	}


