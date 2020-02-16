if(global.paused)
	exit;

if(hp <= 0)
	instance_destroy();

if(keyboard_check_pressed(vk_left)) 
{
	xx -= 1;
}

if(keyboard_check_pressed(vk_right)) 
{
	xx += 1;
}

if(keyboard_check_pressed(vk_up)) 
{
	yy -= 1;
}

if(keyboard_check_pressed(vk_down)) 
{
	yy += 1;
}
if(xx > 2)	 xx = 2;
if(xx < 0)	 xx = 0;
if(yy > 2)	 yy = 2;
if(yy < 0)	 yy = 0;

if(get_position(xx,yy) != -1)
{
	xx = pxx;
	yy = pyy;
}

register_position(pxx, pyy, -1);
register_position(xx, yy, id);
move_to_grid_pos();
depth = -y;

if(keyboard_check_pressed(ord("X"))) 
{
	var projectile = instance_create_depth(x + 18, y - 14, depth, oPlayerProjectile);
	projectile.xx = xx +1;
	projectile.yy = yy;
	projectile.depth = depth-1;
}

// charge shot
if(keyboard_check(ord("X"))) 
{
	chargeTimer += global.deltaTime;
	if(chargeTimer > .25) 
	{
		part_system_position(blasterChargeParticleSystem, x + 15, y - 14);
		part_emitter_region(blasterChargeParticleSystem, blasterChargeParticleEmitter, -4, 4, -4, 4, ps_shape_ellipse, ps_distr_gaussian);
		
		if (chargeTimer > 1.0) 
			part_emitter_stream(blasterChargeParticleSystem,blasterChargeParticleEmitter,blasterChargeParticle,10);
		else
			part_emitter_stream(blasterChargeParticleSystem,blasterChargeParticleEmitter,blasterChargeParticle,1);
	}
}

if (keyboard_check_released(ord("X"))) 
{
	if (chargeTimer > 1.0) 
	{
		var projectile = instance_create_depth(x + 18, y - 14, depth, oPlayerProjectileBig);
		projectile.xx = xx +1;
		projectile.yy = yy;
		projectile.depth = depth-1;
	}
	
	chargeTimer = 0;
	part_emitter_clear(blasterChargeParticleSystem, blasterChargeParticleEmitter);
}

invuln_status_update();

pxx = xx;
pyy = yy;