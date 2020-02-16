if(hp <= 0) 
{
	register_position(xx,yy,-1);
	instance_destroy();
}

invuln_status_update();

if(invuln  && hpBarTimer == -1)
	hpBarTimer = 0;

if(hpBarTimer >= 0)
	hpBarTimer += global.deltaTime;

if(hpBarTimer >= 3) 
{
	hpBarTimer = -1;
}

depth = -y;