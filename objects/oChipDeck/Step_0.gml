
if(visible)
{
	if(keyboard_check_pressed(vk_left)) 
	{
		selX -= 1;
	}
	if(keyboard_check_pressed(vk_right)) 
	{
		selX += 1;
	}
	if(keyboard_check_pressed(vk_up)) 
	{
		selY -= 1;
	}
	if(keyboard_check_pressed(vk_down)) 
	{
		selY += 1;
	}
}
if(selX < 0) selX = 0;
if(selX > 3) selX = 3;
if(selY < 0) selY = 0;
if(selY > 2) selY = 2;
