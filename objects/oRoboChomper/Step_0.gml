stepTimer += step_delta();
moveTimer += step_delta();

if (step_check(stepTimer, 20)) 
{
	var projectile = instance_create_depth(x - 18, y - 14, depth, oEnemyGear);
	projectile.xx = xx -1;
	projectile.yy = yy;
	projectile.depth = depth-1;
	stepTimer = 0;
}

register_position(xx,yy,-1);
if(step_check(moveTimer, 20)) 
{
	if(xx == 4 && yy == 1)  // mid -> top
	{
		yy = 0;
	}
	else if(xx == 4 && yy == 0)  // top -> right
	{
		xx = 5;
		yy = 1;
	}
	else if(xx == 5 && yy == 1)  // right -> bottom
	{
		xx = 4;
		yy = 2;
	}
	else if(xx == 4 && yy == 2)  // bottom -> mid
	{
		yy = 1;
	}
	moveTimer = 0;
}

register_position(xx,yy,id);
move_to_grid_pos();