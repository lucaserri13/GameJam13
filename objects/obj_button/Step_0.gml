if global.chargefaster and chargefaster    instance_destroy(self)
if global.chargefurther and chargefurther  instance_destroy(self)
if global.recoverfaster and recoverfaster  instance_destroy(self)
if global.runfaster and runfaster  instance_destroy(self)

if place_meeting(x, y, obj_player)
{
	if inside = 0
	{
	audio_play_sound(snd_button, 10, 0, 1, 0, random_range(0.9, 1.1))
	inside = 1
	}
}
else inside = 0


if place_meeting(x, y, obj_player)
{
	image_index = 1	
	if keyboard_check_pressed(ord("F")) or mouse_check_button(mb_middle)
	{
		if chargefaster and global.points >= 15
		{
		audio_play_sound(snd_powerup, 30, 0, 1, 0, random_range(0.9, 1.1))
		global.chargefaster   = 1
		global.points -= 15
		}
			else if chargefurther and global.points >= 5
			{
			audio_play_sound(snd_powerup, 30, 0, 1, 0, random_range(0.9, 1.1))
			global.chargefurther  = 1
			global.points -= 5
			}
				else if recoverfaster and global.points >= 20
				{
				audio_play_sound(snd_powerup, 30, 0, 1, 0, random_range(0.9, 1.1))
				global.recoverfaster  = 1
				global.points -= 20
				}
					else if runfaster and global.points >= 10
					{
					audio_play_sound(snd_powerup, 30, 0, 1, 0, random_range(0.9, 1.1))
					global.runfaster  = 1
					global.points -= 10
					}
	}
}
else
image_index = 0