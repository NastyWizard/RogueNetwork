var obj = get_position(xx, yy);

if(instance_exists(obj) && obj.object_index == oPlayer)
{
	hurt(obj, damage);	
	instance_destroy();
}

moveTimer+= step_delta();

if (yy + ydir <= 2 && yy + ydir >= 0) 
{
	if(step_check(moveTimer,2.5)) 
	{
		yy += ydir;
		moveTimer = 0;
	}
} 
else 
{
	if(step_check(moveTimer,2.5)) 
	{
		moveTimer = 0;
		xx += xdir;
		ydir = -ydir;
	}

}
if(xx < 0)
	instance_destroy();

lerp_to_grid_pos(moveTimer);
depth = -y +1;
