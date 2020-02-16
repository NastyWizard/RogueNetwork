stepTimer += global.deltaTime;

if (step_check(stepTimer, 10)) 
{
	var projectile = instance_create_depth(x - 18, y - 14, depth, oEnemyProjectile);
	projectile.xx = xx -1;
	projectile.yy = yy;
	projectile.depth = depth-1;
	stepTimer = stepOffset;
}

register_position(xx,yy,id);
move_to_grid_pos();