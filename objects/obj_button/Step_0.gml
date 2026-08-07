if global.chargefaster and chargefaster    instance_destroy(self)
if global.chargefurther and chargefurther  instance_destroy(self)
if global.recoverfaster and recoverfaster  instance_destroy(self)



if place_meeting(x, y, obj_player)
{
	image_index = 1	
	if keyboard_check_pressed(ord("F"))
	{
		if chargefaster and global.points >= 20
		{
		global.chargefaster   = 1
		global.points -= 20
		}
			else if chargefurther and global.points >= 10
			{
			global.chargefurther  = 1
			global.points -= 10
			}
				else if recoverfaster and global.points >= 30
				{
				global.recoverfaster  = 1
				global.points -= 30
				}
	}
}
else
image_index = 0