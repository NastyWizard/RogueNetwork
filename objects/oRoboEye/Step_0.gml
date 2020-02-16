stepTimer += step_delta()
blastAttackTimer += global.deltaTime / global.stepTime;

var fullChargeTime  = 100;

stop_particle();
// just for drawing the charge particles
if(step_check(blastAttackTimer, fullChargeTime - 25)) 
{
	var offset = 0;
	if(image_index > 1 && image_index < 3)
		offset = -2;
	update_particle(x - 16, y - 10 + offset, 1);
}

// controlling the speed of the shooting (stepMax)
if(step_check(blastAttackTimer, fullChargeTime))
{	
	// regular speed
	stepMax = 1;
	
	// drawing particles
	var offset = 0;
	if(image_index > 1 && image_index < 3)
		offset = -2;
	update_particle(x - 16, y - 10 + offset, 10);
	//
	
	// fast speed
	if(step_check(blastAttackTimer - fullChargeTime, 50))
	{
		stop_particle();
		stepMax = 10;
		blastAttackTimer = 0;
	}
}

// actual shooting
if (step_check(stepTimer, stepMax)) 
{
	var offset = 0;
	if(image_index > 1 && image_index < 3)
		offset = -2;
	var projectile = instance_create_depth(x - 18, y - 8 + offset, depth, oEnemyProjectile);
	projectile.xx = xx -1;
	projectile.yy = yy;
	projectile.depth = depth-1;
	stepTimer = 0;
}

register_position(xx,yy,id);
move_to_grid_pos();