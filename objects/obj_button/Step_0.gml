if global.chargefaster and chargefaster    instance_destroy(self)
if global.chargefurther and chargefurther  instance_destroy(self)
if global.recoverfaster and recoverfaster  instance_destroy(self)
if global.runfaster and runfaster  instance_destroy(self)



if place_meeting(x, y, obj_player)
{
	image_index = 1	
	if keyboard_check_pressed(ord("F"))
	{
		if chargefaster and global.points >= 15
		{
		global.chargefaster   = 1
		global.points -= 15
		}
			else if chargefurther and global.points >= 5
			{
			global.chargefurther  = 1
			global.points -= 5
			}
				else if recoverfaster and global.points >= 20
				{
				global.recoverfaster  = 1
				global.points -= 20
				}
					else if runfaster and global.points >= 10
					{
					global.runfaster  = 1
					global.points -= 10
					}
	}
}
else
image_index = 0